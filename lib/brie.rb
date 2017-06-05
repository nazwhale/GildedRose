require_relative 'gilded_rose'

class Brie < Item

  def initialize(args)
    @name = args[:name]
    @sell_in = args[:sell_in]
    @quality = args[:quality]
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
