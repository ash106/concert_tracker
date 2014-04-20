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

end