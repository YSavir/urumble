class StudentsController < ApplicationController

  def home

  end

  def show
    @student = current_student
  end

end