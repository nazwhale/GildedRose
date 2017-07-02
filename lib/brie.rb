require_relative 'item_updater'

class Brie < Item

  def initialize(args)
    @name, @sell_in, @quality = args[:name], args[:sell_in], args[:quality]
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
