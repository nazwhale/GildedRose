require_relative 'updates'

class Brie

  attr_reader :sell_in, :quality
  include Updates

  def initialize(sell_in, quality)
    @sell_in = sell_in
    @quality = quality
    # update(quality)
  end

  def update(quality)
    self.mature
  end


end
