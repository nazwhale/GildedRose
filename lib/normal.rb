require_relative 'gilded_rose'

class Normal < Item

  def initialize(args)
    @name = args[:name]
    @sell_in = args[:sell_in]
    @quality = args[:quality]
  end

  def update
    self.passage_of_time
    normal_degredation
  end

  private

  def normal_degredation
    unless quality == 0
      self.degrade
      self.degrade if sell_in < 0
    end
  end
end
