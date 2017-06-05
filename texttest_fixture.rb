#!/usr/bin/ruby -w

require File.join(File.dirname(__FILE__), 'lib/gilded_rose')
require File.join(File.dirname(__FILE__), 'lib/tickets')
require File.join(File.dirname(__FILE__), 'lib/normal')
require File.join(File.dirname(__FILE__), 'lib/sulfuras')

require File.join(File.dirname(__FILE__), 'lib/brie')


puts "OMGHAI!"
items = [
  Normal.new(name: "+5 Dexterity Vest", sell_in: 10, quality: 20),
  Brie.new(name: "Aged Brie", sell_in: 2, quality: 0),
  Normal.new(name: "Elixir of the Mongoose", sell_in: 5, quality: 7),
  Sulfuras.new(name: "Sulfuras, Hand of Ragnaros", sell_in: 0, quality: 80),
  Sulfuras.new(name: "Sulfuras, Hand of Ragnaros", sell_in: -1, quality: 80),
  Tickets.new(name: "Backstage passes to a TAFKAL80ETC concert", sell_in: 10, quality: 49),
  Tickets.new(name: "Backstage passes to a TAFKAL80ETC concert", sell_in: 5, quality: 49),
  # This Conjured item does not work properly yet
  Normal.new(name: "Conjured Mana Cake", sell_in: 3, quality: 6)
]

days = 2
if ARGV.size > 0
  days = ARGV[0].to_i + 1
end

gilded_rose = GildedRose.new items
(0...days).each do |day|
  puts "-------- day #{day} --------"
  puts "name, sellIn, quality"
  items.each do |item|
    puts item
  end
  puts ""
  gilded_rose.update_quality
end
