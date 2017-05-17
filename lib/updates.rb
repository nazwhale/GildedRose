module Updates

  attr_writer :quality, :sell_in

  def passage_of_time
    self.sell_in -= 1
  end

  def degrade
    self.quality -= 1
  end

  def improve
    self.quality += 1
  end

end
