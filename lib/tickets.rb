class Tickets

  attr_reader :sell_in, :quality
  attr_writer :quality
  include Updates

  def initialize(sell_in, quality)
    @sell_in, @quality = sell_in, quality
    update
  end

  def update
    self.passage_of_time
    self.improve
    self.improve if sell_in <= 10
    self.improve if sell_in <= 5
    self.quality = 0 if sell_in <= 0
  end

end
