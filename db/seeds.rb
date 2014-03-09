# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Project.create(name:'project1', description:'bla', category:'work', location:'sydney', year:'2014', note:"" )
Project.create(name:'project2', description:'bla', category:'work', location:'milano', year:'2010' )
Project.create(name:'project3', description:'bla', category:'work', location:'como', year:'2012' )
Project.create(name:'project4', description:'bla', category:'work', location:'berlino', year:'2011' )
Project.create(name:'project5', description:'bla', category:'work', location:'lisbona', year:'2014' )
Project.create(name:'project6', description:'bla', category:'work', location:'torino', year:'2014' )
Project.create(name:'project7', description:'bla', category:'work', location:'parma', year:'2013' )
Project.create(name:'project8', description:'bla', category:'work', location:'la spezia', year:'2014' )
Project.create(name:'project9', description:'bla', category:'work', location:'sydney', year:'2017' )








#    t.string  "name"
#    t.text    "description"
#    t.string  "category"
#    t.string  "location"
#    t.integer "year"
#    t.string  "note"