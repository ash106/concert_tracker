require 'spec_helper'

describe "Editing a band" do

  it "updates the band and shows the band's updated details" do
    band = Band.create(band_attributes)

    visit band_url(band)

    click_link 'Edit'

    expect(current_path).to eq(edit_band_path(band))

    expect(find_field('Name').value).to eq(band.name)

    fill_in 'Name', with: "Updated Name"

    click_button 'Update Band'

    expect(current_path).to eq(band_path(band))

    expect(page).to have_text('Updated Name')
    expect(page).to have_text('Band successfully updated!')
  end

  it "does not update the band if it's invalid" do
    band = Band.create(band_attributes)

    visit edit_band_url(band)

    fill_in 'Name', with: " "

    click_button 'Update Band'

    expect(page).to have_text('error')
  end

end