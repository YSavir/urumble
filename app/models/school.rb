class School < ActiveRecord::Base

  has_many :students
  has_many :administrators
  has_many :dining_halls

end
