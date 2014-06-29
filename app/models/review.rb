class Review < ActiveRecord::Base

  belongs_to :student
  belongs_to :dining_hall

  has_one :photo
  has_many :tags, as: "taggable"

end
