class DiningHallsController < ApplicationController

  def show
    @dining_hall = DiningHall.find(params[:id])
  end

end