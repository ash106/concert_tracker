require 'spec_helper'

describe "Deleting a band" do

  it "destroys the band and shows the band listings without the deleted band" do
    band = Band.create(band_attributes)

    visit band_path(band)

    click_link 'Delete'

    expect(current_path).to eq(bands_path)
    expect(page).not_to have_text(band.name)
    expect(page).to have_text("Band successfully deleted!")
  end

end