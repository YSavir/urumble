class ReviewsController < ApplicationController

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    dining_hall = DiningHall.find(params[:dining_hall_id])
    new_review = Review.create(review_params)
    new_review.student = current_student
    new_review.dining_hall = dining_hall
    new_review.save!

    redirect_to dining_hall_review_path(dining_hall, new_review)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end

end