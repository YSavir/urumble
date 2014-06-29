class DiningHallsController < ApplicationController

  def show
    @dining_hall = DiningHall.find(params[:id])
    @review = Review.new
    @recent_reviews = @dining_hall.reviews.order(created_at: :desc).limit(10)
  end

end