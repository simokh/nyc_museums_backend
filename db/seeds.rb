# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Museum.destroy_all
Review.destroy_all


met = Museum.create(name: "Metropolitan Museum of Art", borough: "New York", img_url: "https://en.wikipedia.org/wiki/Metropolitan_Museum_of_Art")
mnh = Museum.create(name: "American Museum of Natural History", borough: "New York", img_url: "https://en.wikipedia.org/wiki/American_Museum_of_Natural_History")
bm = Museum.create(name: "Brooklyn Museum", borough: "Brooklyn", img_url: "https://en.wikipedia.org/wiki/Brooklyn_Museum")
qm = Museum.create(name: "Queens Museum", borough: "Queens", img_url: "https://en.wikipedia.org/wiki/Queens_Museum")
sim = Museum.create(name: "Staten Island Museum", borough: "Staten Island", img_url: "https://en.wikipedia.org/wiki/Staten_Island_Museum")


rev_1 = Review.create(review: "I love this one!!!", rating: "5", museum_id: met.id)