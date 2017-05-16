module Updates

  attr_writer :quality

  def mature
    self.quality += 1
  end

end
