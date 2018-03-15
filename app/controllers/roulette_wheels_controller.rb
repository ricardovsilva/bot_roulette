class RouletteWheelsController < AuthenticatedController

  before_action :set_roulette_wheel, only: [:show, :edit, :update, :destroy]

  def index
    @roulette_wheels = RouletteWheel.all
  end

  def show
  end

  def new
    @roulette_wheel = RouletteWheel.new
  end

  def edit
  end

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

  def destroy
    @roulette_wheel.destroy
    respond_to do |format|
      format.html { redirect_to roulette_wheels_url, notice: 'Roulette wheel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_roulette_wheel
      @roulette_wheel = RouletteWheel.includes(:entries).find(params[:id])
    end

    def roulette_wheel_params
      params.require(:roulette_wheel).permit(:user_id, :name, :width, :height, :speed, :duration)
    end
end
