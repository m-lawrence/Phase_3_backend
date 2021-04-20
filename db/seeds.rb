# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
User.destroy_all
Hike.destroy_all


#User
missy = User.create(name: "Missy", age: 27, location: "Centreville, VA")
yuri = User.create(name: "Yuri", age: 24, location: "Fairfax Station, VA" )
amanda = User.create(name: "Amanda", age: 26, location: "Washington DC")
carlos = User.create(name: "Carlos", age: 40, location: "Washington DC")
seth = User.create(name: "Seth", age: 30, location: "New York")

#Hike
hike1 = Hike.create(name: "Dark Hollow Falls", location: "Shenandoah National Park", difficulty: "easy", distance: 1.4, image: "https://www.nps.gov/common/uploads/cropped_image/primary/9ACB09D0-A1B5-B1BC-EFD734B5A085F9C4.jpg?width=1200&quality=90&mode=crop")
hike2 = Hike.create(name: "Lower Whiteoak Falls", location: "Shenandoah National Park", difficulty: "easy", distance: 2, image:"https://www.nps.gov/common/uploads/cropped_image/primary/D2B2F23B-AADD-4179-401960D4F553FF16.jpg?width=1200&quality=90&mode=crop")
hike3 = Hike.create(name: "Blackrock Summit", location: "Shenandoah National Park", difficulty: "easy", distance: 1, image: "https://www.nps.gov/common/uploads/cropped_image/primary/995A2017-AA42-A668-D4F6EDE979B2AC75.jpg?width=1200&quality=90&mode=crop")
hike4 = Hike.create(name: "Doyles River Falls", location: "Shenandoah National Park", difficulty: "moderate", distance: 3.3, image: "https://www.nps.gov/common/uploads/cropped_image/primary/D8B23F56-F876-B8EE-FC0AF067F84CC4AA.jpg?width=1200&quality=90&mode=crop")
hike5 = Hike.create(name: "Northern Peaks Trail", location: "Sugarloaf Mountain Natural Area", difficulty:"difficult", distance: 6.3, image: "https://liveandlethike.files.wordpress.com/2016/12/dsc00012.jpg?w=1280")
hike6 = Hike.create(name: "Billy Goat Trail", location: "Great Falls, MD", difficulty: "extreme", distance: 4.4, image: "https://visitmontgomery.com/wp-content/uploads/2020/04/great-falls-from-above.jpg")
hike7 = Hike.create(name: "Little Gunpowder Trail", location: "Gunpowder Falls State Park, MD", difficulty: "moderate", distance: 4.2, image:"https://media-cdn.tripadvisor.com/media/photo-s/08/4d/80/83/little-gunpowder-falls.jpg")
hike8 = Hike.create(name: "Maryland Heights Trail", location: "Harpers Ferry, MD", difficulty: "moderate", distance: "moderate", image: "https://live.staticflickr.com/723/23226735645_6dfe4afa80_b.jpg")
hike9 = Hike.create(name: "Little Devils Stairs Loop", location: "Shenandoah National Park", difficulty: "extreme", distance:7.4, image: "https://assets.sectionhiker.com/wp-content/uploads/thumbskeep/2014/05/Hiker-climbing-the-Stairs-about-mid-way-up1.jpg")

#review
review1 = Review.create(user: missy, hike: hike1, rating: 5, description:"Trail is nice with a good waterfall")
review2 = Review.create(user: carlos, hike: hike1, rating: 3, description: "It was okey")
review3 = Review.create(user: amanda, hike: hike3, rating:3.5, description: "Too crowded")
review4 = Review.create(user: carlos, hike: hike3, rating:2, description: "Not a easy trail for older folks" )
review5 = Review.create(user: missy, hike: hike5, rating: 4, description:"Trail is steep but pretty doable even if you are slightly out of shape. Avoid if raining.")
review6 = Review.create(user: amanda, hike: hike5, rating: 5, description:"Beautiful, challenging trail")
review7 = Review.create(user: yuri, hike: hike2, rating: 4.5, description:"One of my favorite trails! Not hard, and waterfall is beautiful!")
review8 = Review.create(user: seth, hike:hike2, rating:5, description: "Waterfall is worth seeing.")
review9 = Review.create(user: yuri, hike: hike6, rating: 3, description: "If you are short, its better to be accompanied by a tall friend to the trail")
review10 = Review.create(user: missy, hike: hike6, rating: 5, description:"It was awesome, fun for the whole family")
review11 = Review.create(user: amanda, hike: hike4, rating:5, description:"Beautiful hike with my husband. The falls are amazing & we love hiking along the stream")
review12 = Review.create(user: yuri, hike: hike7, rating: 2, description:" Not as pretty as I thought it would be")
review13 = Review.create(user: yuri, hike: hike8, rating: 5, description: "Magnificent views of Harper's Ferry and the rivers merging")
review14 = Review.create(user: yuri, hike: hike9, rating: 3, description:" I wasn't prepared for this !!!")

puts " ✅ Done Done Done"