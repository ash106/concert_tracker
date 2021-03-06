require 'spec_helper'

describe "Viewing the list of users" do

  it "shows the users" do
    user1 = User.create!(user_attributes(name: "Alex", email: "alex@gmail.com"))
    user2 = User.create!(user_attributes(name: "Joe", email: "joe@hotmail.com"))
    user3 = User.create!(user_attributes(name: "Megan", email: "megan@gmail.com"))

    sign_in(user1)

    visit users_url

    expect(page).to have_link(user1.name)
    expect(page).to have_link(user2.name)
    expect(page).to have_link(user3.name)
  end

end