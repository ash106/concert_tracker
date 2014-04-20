require 'spec_helper'

describe "Viewing the list of bands" do

  it "shows the bands" do
    band1 = Band.create(name: "Thrice")
    band2 = Band.create(name: "Circa Survive")
    band3 = Band.create(name: "Pelican")

    visit bands_url

    expect(page).to have_link(band1.name)
    expect(page).to have_link(band2.name)
    expect(page).to have_link(band3.name)
  end

end