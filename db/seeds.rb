# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Department.populate 5 do | d |
  d.name = Faker::Company.type

  Person.populate 3 do | p |
    p.first_name = Faker::Name.first_name
    p.last_name = Faker::Name.last_name
    p.document_number = Faker::Number.number(digits: 8)
    p.gender = Faker::Number.within(range: 1..2)
    p.birth_date = Faker::Date.birthday(min_age: 18, max_age: 65)
    p.department_id = d.id
  end
end
