class PhotosController < ApplicationController
  before_action :authenticate_student!

  def index
    @student_school_photos = Photo.student_homepage_photos(current_student.school)
  end

  def show
    @photo = Photo.find(params[:id])
  end

end