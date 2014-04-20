require 'spec_helper'

describe "Creating a new band" do

  it "saves the band and shows the new band's details" do
    visit bands_url

    click_link 'Add New Band'

    expect(current_path).to eq(new_band_path)

    fill_in "Name", with: "Thrice"

    click_button 'Create Band'

    expect(current_path).to eq(band_path(Band.last))

    expect(page).to have_text('Thrice')
    expect(page).to have_text('Band successfully created!')
  end

  it "does not save the band if it's invalid" do
    visit new_band_url

    expect {
      click_button 'Create Band'
    }.not_to change(Band, :count)

    expect(current_path).to eq(bands_path)
    expect(page).to have_text('error')
  end

end