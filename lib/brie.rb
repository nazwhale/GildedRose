require_relative 'updates'

class Brie

  attr_reader :sell_in, :quality
  include Updates

  def initialize(sell_in, quality)
    @sell_in, @quality = sell_in, quality
    update
  end

  def update
    self.passage_of_time
    self.mature if quality < 50
  end

end
