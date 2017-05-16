class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|

      #normal items
      unless item.name == "Aged Brie" || item.name == "Backstage passes to a TAFKAL80ETC concert"
        if item.quality > 0
          item.quality -= 1 unless item.name == "Sulfuras, Hand of Ragnaros"
        end

      #Brie and passes
      else
        if item.quality < 50
          item.quality += 1
          if item.name == "Backstage passes to a TAFKAL80ETC concert"
            if item.sell_in < 11
              item.quality += 1 if item.quality < 50
            end
            if item.sell_in < 6
              item.quality += 1 if item.quality < 50
            end
          end
        end
      end

      #Sell in values without Sulfuras
      item.sell_in -= 1 unless item.name == "Sulfuras, Hand of Ragnaros"

      #normal items
      if item.sell_in < 0
        if item.name != "Aged Brie"
          if item.name != "Backstage passes to a TAFKAL80ETC concert"
            if item.quality > 0
              item.quality -= 1 unless item.name == "Sulfuras, Hand of Ragnaros"
            end
          else
            item.quality = item.quality - item.quality
          end
        else
          item.quality += 1 if item.quality < 50
        end
      end

    end
  end
end

class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end
