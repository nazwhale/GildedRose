require_relative 'gilded_rose'
class Normal < Item

  attr_reader :sell_in, :quality, :name
  attr_writer :quality
  include Updates

  def initialize(name, sell_in, quality)
    @name, @sell_in, @quality = name, sell_in, quality
  end

  def update
    self.passage_of_time
    unless quality == 0
      self.degrade
      self.degrade if sell_in < 0
    end
  end

end
