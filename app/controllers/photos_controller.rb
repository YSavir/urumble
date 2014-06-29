class PhotosController < ApplicationController
  before_action :authenticate_student!

  def index
    if current_student && current_student.school
      @student_school_photos = Photo.student_homepage_photos(current_student.school)
    else
      @student_school_photos = Photo.all.limit(30)
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

end