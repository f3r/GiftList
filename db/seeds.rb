# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

items = Item.create([
  { name: "Fitbit", image: "http://pisces.bbystatic.com/image2/BestBuy_US/images/products/8681/8681579_sa.jpg;canvasHeight=145;canvasWidth=105" , price: 129.99 , description: "Tracks steps taken, distance traveled, calories burned, stairs climbed, pace, active minutes and sleep metrics; call notifications; OLED; syncs with select computers and smartphones" , category: "Gadget" , rating: 4 }
])