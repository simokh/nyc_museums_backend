# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Museum.destroy_all
Review.destroy_all


met = Museum.create(name: "Metropolitan Museum of Art", borough: "New York", img_url:"https://upload.wikimedia.org/wikipedia/commons/3/30/Metropolitan_Museum_of_Art_%28The_Met%29_-_Central_Park%2C_NYC.jpg")
mnh = Museum.create(name: "American Museum of Natural History", borough: "New York", img_url: "https://upload.wikimedia.org/wikipedia/commons/e/ec/USA-NYC-American_Museum_of_Natural_History.JPG")
bm = Museum.create(name: "Brooklyn Museum", borough: "Brooklyn", img_url: "https://upload.wikimedia.org/wikipedia/commons/d/d1/Brooklyn_Museum_Night_2015.jpg")
qm = Museum.create(name: "Queens Museum", borough: "Queens", img_url: "https://upload.wikimedia.org/wikipedia/commons/c/c8/Queens_Museum-1.jpg")
sim = Museum.create(name: "El Museo del Barrio", borough: "New York", img_url: "https://upload.wikimedia.org/wikipedia/commons/c/ca/WTM3_The_Fixers_0056.jpg")


rev_1 = Review.create(review: "I love this one!!!", rating: "5", museum_id: met.id)