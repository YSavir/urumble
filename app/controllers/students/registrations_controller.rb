class Students::RegistrationsController < Devise::RegistrationsController

  def create
    student_diets = []
    params[:diets].each do |checked_diet|
      student_diets << StudentDiet.create(:diet_id => Diet.find_by_name(checked_diet[0]).id)
    end
    student_diets.each do |student_diet|
      student_diet.student = current_student
      student_diet.save!
    end
    super
  end

end
