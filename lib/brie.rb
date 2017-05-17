require_relative 'gilded_rose'
require_relative 'updates'

class Brie < Item

  attr_reader :sell_in, :quality, :name
  include Updates

  def initialize(name, sell_in, quality)
    @name, @sell_in, @quality = name, sell_in, quality
  end

  def update
    self.passage_of_time
    self.improve if quality < 50
  end

end
