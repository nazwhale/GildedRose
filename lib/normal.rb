class Normal

  attr_reader :sell_in, :quality
  attr_writer :quality
  include Updates

  def initialize(sell_in, quality)
    @sell_in, @quality = sell_in, quality
    update
  end

  def update
    self.passage_of_time
    unless quality == 0
      self.degrade
      self.degrade if sell_in < 0
    end
  end

end
