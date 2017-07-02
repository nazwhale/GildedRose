require_relative 'item'

class ItemUpdater

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each { |item| item.update }
  end

end
