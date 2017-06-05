require_relative 'gilded_rose'

class Sulfuras < Item

  def initialize(args)
    @name = args[:name]
    @sell_in = args[:sell_in]
    @quality = args[:quality]
  end

  def update
  end
end
