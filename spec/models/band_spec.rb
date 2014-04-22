require 'spec_helper'

describe "A band" do

  it "requires a name" do
    band = Band.new(name: "")

    expect(band.valid?).to be_false
    expect(band.errors[:name].any?).to be_true
  end

  it "is valid with example attributes" do
    band = Band.new(band_attributes)

    expect(band.valid?).to be_true
  end

  it "has played concerts" do
    band = Band.new(band_attributes)
    concert1 = Concert.new(concert_attributes(date: "2006-04-21"))
    concert2 = Concert.new(concert_attributes(date: "2008-07-13"))

    band.acts.new(concert: concert1)
    band.acts.new(concert: concert2)

    expect(band.played_concerts).to include(concert1)
    expect(band.played_concerts).to include(concert2)
  end

end