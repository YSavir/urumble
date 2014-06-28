class Review < ActiveRecord::Base

  belongs_to :student
  belongs_to :dining_hall

  has_many :photos
  has_many :tags, as: "taggable"

end
