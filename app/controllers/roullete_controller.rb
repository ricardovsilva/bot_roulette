class RoulleteController < ApplicationController
  def index
    @entries = Entry.all.select {|e| e.active }
  end
end
