class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  belongs_to :school
  has_many :reviews
  has_many :photos
  has_many :student_diets
  has_many :diets, through: :student_diets

end
