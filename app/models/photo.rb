class Photo < ActiveRecord::Base

  belongs_to :review
  belongs_to :student
  belongs_to :dining_hall
  has_many :tags, as: "taggable"

  # set default ordering to created_at
  default_scope { order(created_at: :desc) }

  def self.student_homepage_photos(student_school)
    school_photos = []
    student_school.dining_halls.each do |dining_hall|
      school_photos = school_photos + dining_hall.photos.limit(10);
    end
    school_photos.shuffle
  end

end
