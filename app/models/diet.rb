class Diet < ActiveRecord::Base

  has_many :student_diets
  has_many :students, through: :student_diets

end
