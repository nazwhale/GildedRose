require_relative 'updates'

class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      item.update
    end
  end
end

class Item
  attr_accessor :name, :sell_in, :quality
  include Updates

  def initialize(args)
    @name = args[:name]
    @sell_in = args[:sell_in]
    @quality = args[:quality]
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end
