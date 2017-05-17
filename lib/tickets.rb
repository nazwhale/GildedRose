class Tickets

  attr_reader :sell_in, :quality
  include Updates

  def initialize(sell_in, quality)
    @sell_in, @quality = sell_in, quality
    update
  end

  def update
    self.passage_of_time
    self.passage_of_time if sell_in <= 0
  end

end
