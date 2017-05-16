require 'gilded_rose'

describe GildedRose do

  # let(:vest) { double :item, name: "+5 Dexterity Vest", sell_in: 10, quality: 20}
  # let(:brie) { double :item, name: "Aged Brie", sell_in: 2, quality: 0}
  let(:vest) { Item.new(name="+5 Dexterity Vest", sell_in=10, quality=20)}
  let(:brie) { Item.new(name="Aged Brie", sell_in=2, quality=0)}
  let(:items) {[vest, brie]}

  subject(:gildedrose) { described_class.new(items)}

  describe "#update_quality" do
    it "Once the sell by date has passed, Quality degrades twice as fast" do
      11.times{gildedrose.update_quality}
      expect(vest.sell_in).to eq -1
      expect(vest.quality).to eq 8
    end

    it "The Quality of an item is never negative" do
      100.times{gildedrose.update_quality}
      expect(vest.quality).not_to be_negative
    end

    it "Aged Brie increases in Quality the older it gets" do
      gildedrose.update_quality
      expect(brie.quality).to eq 1
    end
  end

end
