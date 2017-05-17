require 'tickets'

describe Tickets do

  let(:tickets) { described_class.new(sell_in=10, quality=20)}

  it 'Sell in decreases by 1' do
    expect(tickets.sell_in).to eq 9
  end

  it "The Quality of an item is never negative" do
    100.times{ tickets.update }
    expect(tickets.quality).not_to be_negative
  end

  it "Once the sell by date has passed, Quality degrades twice as fast" do
    10.times{ tickets.update }
    expect(tickets.sell_in).to eq -1
    expect(tickets.quality).to eq 8
  end

end
