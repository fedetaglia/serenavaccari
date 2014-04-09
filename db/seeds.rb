# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.delete_all

User.create(email:'sere.vaccari@gmail.com', password:'changeme', password_confirmation:'changeme')
User.create(email:'fede.taglaibue@gmail.com', password:'changeme', password_confirmation:'changeme')


#    t.string  "name"
#    t.text    "description"
#    t.string  "category"
#    t.string  "location"
#    t.integer "year"
#    t.string  "note"