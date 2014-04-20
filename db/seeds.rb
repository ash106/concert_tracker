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

Concert.create!([
  {
    venue: "The Masquerade",
    location: "Atlanta, GA",
    date: "2008-04-26"
  },
  {
    venue: "Boulder Theatre",
    location: "Boulder, CO",
    date: "2006-03-31"
  },
  {
    venue: "The Door",
    location: "Dallas, TX",
    date: "2006-08-10"
  },
  {
    venue: "The Starland Ballroom",
    location: "Sayreville, NJ",
    date: "2006-12-27"
  },
  {
    venue: "House of Blues",
    location: "New Orleans, LA",
    date: "2009-07-18"
  }
])

Band.create!([
  {
    name: "Thrice"
  },
  {
    name: "Circa Survive"
  },
  {
    name: "Envy On The Coast"
  },
  {
    name: "Rx Bandits"
  },
  {
    name: "Saosin"
  }
])