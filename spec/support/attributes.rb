def user_attributes(overrides = {})
  {
    name: "Alex",
    email: "alex@gmail.com",
    password: "secret",
    password_confirmation: "secret"
  }.merge(overrides)
end

def concert_attributes(overrides = {})
  {
    venue: "The Masquerade",
    location: "Atlanta, GA",
    date: "2008-04-26"
  }.merge(overrides)
end