# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Agency.create name: "MTI" 
Client.create name: "Codefi", address1: "338 Broadway", zip: "63902", state: "MO", city: "Cape Girardeau", phone: "555-555-5555", agency_id: 1
User.create first_name: "Jay", last_name: "Bennett", email: "jay@codefiworks.com", password: "codefi", agency_id: Agency.first.id, client_id: Client.first.id, role: 0