require_relative 'gilded_rose'

class Brie < Item

  def initialize(name, sell_in, quality)
    @name, @sell_in, @quality = name, sell_in, quality
  end

  def update
    self.passage_of_time
    self.improve if quality < 50
  end

end
