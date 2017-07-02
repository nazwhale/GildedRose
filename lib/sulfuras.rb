require_relative 'item_updater'

class Sulfuras < Item

  def initialize(args)
    @name, @sell_in, @quality = args[:name], args[:sell_in], args[:quality]
  end

  # update method needed to pass through the 'item updater'
  def update
  end

end
