require 'sulfuras'

describe Sulfuras do

  subject(:sulfuras) { described_class.new("sulfuras", 0, 80)}

  it "The Quality of an item is never negative" do
    100.times{ sulfuras.update }
    expect(sulfuras.quality).not_to be_negative
  end

  it "Sulfuras never decreases in quality" do
    expect(sulfuras.quality).to eq 80
  end

  it "Sulfuras never has to be sold" do
    expect(sulfuras.sell_in).to eq 0
  end

end
