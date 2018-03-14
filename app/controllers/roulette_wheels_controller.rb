class RouletteWheelsController < ApplicationController
  before_action :set_roulette_wheel, only: [:show, :edit, :update, :destroy]

  # GET /roulette_wheels
  # GET /roulette_wheels.json
  def index
    @roulette_wheels = RouletteWheel.all
  end

  # GET /roulette_wheels/1
  # GET /roulette_wheels/1.json
  def show
  end

  # GET /roulette_wheels/new
  def new
    @roulette_wheel = RouletteWheel.new
  end

  # GET /roulette_wheels/1/edit
  def edit
  end

  # POST /roulette_wheels
  # POST /roulette_wheels.json
  def create
    @roulette_wheel = RouletteWheel.new(roulette_wheel_params)
    @roulette_wheel.user_id = current_user.id

    respond_to do |format|
      if @roulette_wheel.save
        format.html { redirect_to @roulette_wheel, notice: 'Roulette wheel was successfully created.' }
        format.json { render :show, status: :created, location: @roulette_wheel }
      else
        format.html { render :new }
        format.json { render json: @roulette_wheel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roulette_wheels/1
  # PATCH/PUT /roulette_wheels/1.json
  def update
    respond_to do |format|
      if @roulette_wheel.update(roulette_wheel_params)
        format.html { redirect_to @roulette_wheel, notice: 'Roulette wheel was successfully updated.' }
        format.json { render :show, status: :ok, location: @roulette_wheel }
      else
        format.html { render :edit }
        format.json { render json: @roulette_wheel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roulette_wheels/1
  # DELETE /roulette_wheels/1.json
  def destroy
    @roulette_wheel.destroy
    respond_to do |format|
      format.html { redirect_to roulette_wheels_url, notice: 'Roulette wheel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roulette_wheel
      @roulette_wheel = RouletteWheel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roulette_wheel_params
      params.require(:roulette_wheel).permit(:user_id, :name)
    end
end
