# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

updates = [
  {
    on: Date.new(2020, 10, 26),
    summary: "Niko and Mihai meet for the first time to discuss starting an unschooling school in Niko's barn",
    priority: 2,
    area: 1,
  },
  {
    on: Date.new(2021, 5, 25),
    summary: "Mihai fully commits to creating OROWS",
    priority: 1,
    area: 0,
  },
  {
    on: Date.new(2021, 7, 1),
    summary: "Mihai and Karema meet in person in Atlanta, with a suprise cameo by Charlie",
    priority: 1,
    area: 2,
  }
]
updates.each do |update|
  Update.create(update)
end
