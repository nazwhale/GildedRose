require 'gilded_rose'

describe GildedRose do

  let(:vest) { Item.new(name="+5 Dexterity Vest", sell_in=10, quality=20)}
  let(:brie) { Item.new(name="Aged Brie", sell_in=2, quality=0)}
  # let(:sulfuras) { Item.new(name="Sulfuras, Hand of Ragnaros", sell_in=0, quality=80) }
  let(:passes) { Item.new(name="Backstage passes to a TAFKAL80ETC concert", sell_in=15, quality=20) }
  let(:items) {[vest, brie, passes]}

  subject(:gildedrose) { described_class.new(items)}

  describe "#update_quality" do

    before do
      gildedrose.update_quality
    end






  end

end
