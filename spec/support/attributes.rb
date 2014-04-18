def user_attributes(overrides = {})
  {
    name: "Alex",
    email: "alex@gmail.com",
    password: "secret",
    password_confirmation: "secret"
  }.merge(overrides)
end