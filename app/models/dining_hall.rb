class DiningHall < ActiveRecord::Base

  belongs_to :school
  has_many :reviews
  has_many :photos

  def average_rating
    rating_total = 0
    self.reviews.each do |review|
      rating_total += review.rating if review.rating
    end
    average = rating_total.to_f / self.reviews.length
    average.round(2)
  end

end
