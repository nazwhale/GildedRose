require 'updates'

describe Updates do

  let(:brie) { Brie.new(sell_in=10, quality=20)}

  it "Aged Brie increases in Quality the older it gets" do
    brie.mature
    expect(brie.quality).to eq 21
  end

  # it "Quality of an item is never more than 50" do
  #   expect(brie.quality).to eq 50
  # end


end
