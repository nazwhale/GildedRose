require_relative 'gilded_rose'

class Tickets < Item

  def initialize(name, sell_in, quality)
    @name, @sell_in, @quality = name, sell_in, quality
  end

  def update
    self.passage_of_time
    if quality < 50
      self.improve
      self.improve if sell_in <= 10
      self.improve if sell_in <= 5
    end
    limit_quality
  end

  private

  def limit_quality
    self.quality = 50 if quality > 50
    self.quality = 0 if sell_in <= 0
  end

end
