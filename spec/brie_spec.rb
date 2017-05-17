require 'brie'

describe Brie do

  let(:brie) { Brie.new(sell_in=10, quality=20)}

  it 'Sell in decreases by 1' do
    expect(brie.sell_in).to eq 9
  end

  it "The Quality of an item is never negative" do
    100.times{ brie.update }
    expect(brie.quality).not_to be_negative
  end

  it "Aged Brie increases in Quality the older it gets" do
    expect(brie.quality).to eq 21
  end

  it "Quality of an item is never more than 50" do
    100.times {brie.update}
    expect(brie.quality).to eq 50
  end
end

