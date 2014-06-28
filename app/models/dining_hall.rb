class DiningHall < ActiveRecord::Base

  belongs_to :school
  has_many :reviews
  has_many :photos

end
