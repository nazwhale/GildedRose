require_relative 'gilded_rose'
class Sulfuras < Item

  attr_reader :sell_in, :quality, :name

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update
  end

end
