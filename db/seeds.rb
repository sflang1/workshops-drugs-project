# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

available_drugs = [
  {name: "Ibuprofeno", code: "DUG-IBU001"},
  {name: "Acetaminofén", code: "DUG-ACE001"},
  {name: "Viagra", code: "DUG-VIA0001"},
  {name: "Advil", code: "DUG-AD0001"},
  {name: "Calmidol", code: "DUG-CAL0001"},
]

available_drugs.each do |attributes|
  AvailableDrug.create(attributes)
end
