require_relative 'gilded_rose'

class Brie < Item

  def initialize(name, sell_in, quality)
    @name, @sell_in, @quality = name, sell_in, quality
  end

  def update
    self.passage_of_time
    increase_cheesiness
  end

  private

  def increase_cheesiness
    self.improve if quality < 50
  end
end
