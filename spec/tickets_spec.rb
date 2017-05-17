require 'tickets'

describe Tickets do

  let(:tickets) { described_class.new(sell_in=15, quality=20)}

  it 'Sell in decreases by 1' do
    expect(tickets.sell_in).to eq 14
  end

  it "The Quality of an item is never negative" do
    100.times{ tickets.update }
    expect(tickets.quality).not_to be_negative
  end

  it "Backstage tickets increase in quality as sell_in approaches 0" do
    expect(tickets.quality).to eq 21
  end

  it "Backstage tickets increase in quality by 2 when sell_in <= 10" do
    4.times { tickets.update }
    expect(tickets.quality).to eq 26
  end

  it "Backstage tickets increase in quality by 3 when sell_in <= 5" do
    9.times { tickets.update }
    expect(tickets.quality).to eq 37
  end

  it "Quality is 0 after sell_by date has passed" do
    14.times { tickets.update }
    expect(tickets.quality).to eq 0
  end

end
