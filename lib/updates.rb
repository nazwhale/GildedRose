module Updates

  attr_writer :quality, :sell_in

  def passage_of_time
    self.sell_in -= 1
  end

  def mature
    self.quality += 1
  end

end
