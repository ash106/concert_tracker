require 'spec_helper'

describe "Viewing an individual band" do

  it "shows the band's details" do
    band = Band.create(band_attributes)

    visit band_url(band)

    expect(page).to have_text(band.name)
  end

end