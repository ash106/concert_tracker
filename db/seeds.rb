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
    name: "Pelican"
  },
  {
    name: "Circa Survive"
  },
  {
    name: "Thrice"
  },
  {
    name: "Facing New York"
  },
  {
    name: "Emanuel"
  },
  {
    name: "Taking Back Sunday"
  },
  {
    name: "The Outline"
  },
  {
    name: "Envy On The Coast"
  },
  {
    name: "Your Enemies Friends"
  },
  {
    name: "Forgive Durden"
  },
  {
    name: "Saosin"
  },
  {
    name: "New London Fire"
  },
  {
    name: "From Autumn To Ashes"
  },
  {
    name: "Lifetime"
  },
  {
    name: "Thursday"
  },
  {
    name: "Zechs Marquise"
  },
  {
    name: "Dredg"
  },
  {
    name: "Rx Bandits"
  }
])

alex = User.find_by(name: "Alex")
craig = User.find_by(name: "Craig")
jon = User.find_by(name: "Jon")

concert = Concert.find_by(date: "2008-04-26")
concert.attendees.create!(user: alex)
concert.attendees.create!(user: craig)
concert.acts.create!(band: Band.find_by(name: "Pelican"))
concert.acts.create!(band: Band.find_by(name: "Circa Survive"))
concert.acts.create!(band: Band.find_by(name: "Thrice"))

concert = Concert.find_by(date: "2006-03-31")
concert.attendees.create!(user: alex)
concert.attendees.create!(user: craig)
concert.acts.create!(band: Band.find_by(name: "Facing New York"))
concert.acts.create!(band: Band.find_by(name: "Emanuel"))
concert.acts.create!(band: Band.find_by(name: "Taking Back Sunday"))

concert = Concert.find_by(date: "2006-08-10")
concert.attendees.create!(user: alex)
concert.acts.create!(band: Band.find_by(name: "The Outline"))
concert.acts.create!(band: Band.find_by(name: "Envy On The Coast"))
concert.acts.create!(band: Band.find_by(name: "Your Enemies Friends"))
concert.acts.create!(band: Band.find_by(name: "Forgive Durden"))
concert.acts.create!(band: Band.find_by(name: "Saosin"))

concert = Concert.find_by(date: "2006-12-27")
concert.attendees.create!(user: alex)
concert.acts.create!(band: Band.find_by(name: "New London Fire"))
concert.acts.create!(band: Band.find_by(name: "From Autumn To Ashes"))
concert.acts.create!(band: Band.find_by(name: "Lifetime"))
concert.acts.create!(band: Band.find_by(name: "Thursday"))

concert = Concert.find_by(date: "2009-07-18")
concert.attendees.create!(user: alex)
concert.attendees.create!(user: craig)
concert.attendees.create!(user: jon)
concert.acts.create!(band: Band.find_by(name: "Zechs Marquise"))
concert.acts.create!(band: Band.find_by(name: "Dredg"))
concert.acts.create!(band: Band.find_by(name: "Rx Bandits"))


