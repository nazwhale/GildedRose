require_relative 'updates'

class Item

  attr_accessor :name, :sell_in, :quality
  include Updates

  def initialize(args)
    @name, @sell_in, @quality = args[:name], args[:sell_in], args[:quality]
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end

end
