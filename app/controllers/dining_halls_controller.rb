class DiningHallsController < ApplicationController

  def show
    @dining_hall = DiningHall.find(params[:id])
    @review = Review.new
  end

end