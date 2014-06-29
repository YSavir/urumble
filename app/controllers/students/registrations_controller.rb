class Students::RegistrationsController < Devise::RegistrationsController

  def create
    student_diets = []
    params[:diets].each do |checked_diet|
      student_diets << StudentDiet.create(:diet_id => Diet.find_by_name(checked_diet[0]).id)
    end
    super
    student_diets.each do |student_diet|
      student_diet.student = current_student
      student_diet.save!
    end
    current_student.school = School.find(params["school_id"])
    current_student.save!
    redirect_to root_path
  end

end
