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


    it "Backstage passes increase in quality as sell_in approaches 0" do
      expect(passes.quality).to eq 21
    end

    it "Backstage passes increase in quality by 2 when sell_in <= 10" do
      5.times { gildedrose.update_quality }
      expect(passes.quality).to eq 27
    end

    it "Backstage passes increase in quality by 3 when sell_in <= 5" do
      10.times { gildedrose.update_quality }
      expect(passes.sell_in).to eq 4
      expect(passes.quality).to eq 38
    end

    it "Backstage passes increase in quality by 2 when sell_in <= 10" do
      15.times { gildedrose.update_quality }
      expect(passes.quality).to eq 0
    end

  end

end
