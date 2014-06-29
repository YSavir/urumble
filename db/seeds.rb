# red button
School.destroy_all
Student.destroy_all
Administrator.destroy_all
DiningHall.destroy_all
Review.destroy_all
Photo.destroy_all
Tag.destroy_all
Diet.destroy_all
StudentDiet.destroy_all

# schools
montclair = School.create(:name => "Montclair", :abbreviation => "MSU")
montclair = School.create(:name => "Northwestern", :abbreviation => "NU")

# students
yaniv = montclair.students.create(:name => "Yaniv", :email => "yaniv@example.com", :password => "password123")
sean = montclair.students.create(:name => "Sean", :email => "sean@example.com", :password => "password123")
students = [yaniv, sean]

# administrators
mr_macky = montclair.administrators.create(:name => "Mr. Macky", :email => "mmkay@example.com", :password => "mmkay123")

# dining hall
blanton = montclair.dining_halls.create(:name => "Blanton Hall Cafeteria")
bohn = montclair.dining_halls.create(:name => "Bohn Hall Cafeteria")
# array for later sampling
halls = [blanton, bohn]

# reviews
yaniv_blanton_review = yaniv.reviews.create(:comment => "The curly fries are to die for. Err, I mean, to die from.", :dining_hall_id => blanton.id, :rating => 2)
yaniv_bohn_review = yaniv.reviews.create(:comment => "Decent salads.", :dining_hall_id => bohn.id, :rating => 3)
  # paraphrased quote that may be imagined. College was a while ago.
sean_blanton_review = sean.reviews.create(:comment => "Horrible chicken, but protein is protein and dude's gotta get pumped", :dining_hall_id => blanton.id, :rating => 5)

# Photos
# make a bunch of photos for home page
30.times do
  Photo.create(:dining_hall_id => halls.sample.id, :student_id => students.sample.id, :url => "http://lorempixel.com/200/200/food")
end
# create last so it gets listed as newest
potato_photo = yaniv_blanton_review.photos.create(:student_id => yaniv.id, :dining_hall_id => blanton.id, :url => "/images/curly_fries.jpg")

#Tags
taters = Tag.create(:name => '#sayNoToPoison', :taggable_id => potato_photo.id, :taggable_type => potato_photo.class.name, :student_id => yaniv.id, :dining_hall_id => potato_photo.dining_hall_id)
chicken_plate = Tag.create(:name => '#brotein', :taggable_id => sean_blanton_review.id, :taggable_type => sean_blanton_review.class.name, :student_id => sean.id, :dining_hall_id => sean_blanton_review.dining_hall_id)

# Diets
vegan = Diet.create(:name => "Vegan")
kosher = Diet.create(:name => "Kosher")

# StudentDiets
StudentDiet.create(:student_id => yaniv.id, :diet_id => kosher.id)
StudentDiet.create(:student_id => yaniv.id, :diet_id => vegan.id)
