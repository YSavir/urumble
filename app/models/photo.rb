class Photo < ActiveRecord::Base

  belongs_to :review
  belongs_to :student
  belongs_to :dining_hall
  has_many :tags, as: "taggable"

end
