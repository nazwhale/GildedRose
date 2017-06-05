require_relative 'gilded_rose'

class Sulfuras < Item

  def initialize(args)
    @name, @sell_in, @quality = args[:name], args[:sell_in], args[:quality]
  end

  def update
  end
end
