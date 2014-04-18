# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!([
  {
    name: "Alex",
    email: "alex@gmail.com",
    password: "secret",
    password_confirmation: "secret",
  },
  {
    name: "Craig",
    email: "craig@twobagbrown.com",
    password: "twobags",
    password_confirmation: "twobags"
  },
  {
    name: "Jon",
    email: "jon@jon.com",
    password: "hello",
    password_confirmation: "hello"
  }
])