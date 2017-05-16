require_relative 'sulfuras'
require_relative 'updates'

class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|

      if item.name == "Sulfuras, Hand of Ragnaros"
        Sulfuras.new(item.sell_in, item.quality)
      elsif item.name == "Aged Brie"
        Brie.new(item.sell_in, item.quality)
      else


        #normal items
        unless item.name == "Aged Brie" || item.name == "Backstage passes to a TAFKAL80ETC concert"
          if item.quality > 0
            item.quality -= 1
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

        #Update sell_in values
        item.sell_in -= 1

        #normal items
        if item.sell_in < 0
          if item.name != "Aged Brie"
            if item.name != "Backstage passes to a TAFKAL80ETC concert"
              if item.quality > 0
                item.quality -= 1
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
