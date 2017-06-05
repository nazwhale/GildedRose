require 'normal'

describe Normal do

  let(:normal) { described_class.new(name: "normal", sell_in: 10, quality: 20)}

  before do
    normal.update
  end

  it 'Sell in decreases by 1' do
    expect(normal.sell_in).to eq 9
  end

  it 'Quality decreases by 1' do
    expect(normal.quality).to eq 19
  end

  it "The Quality of an item is never negative" do
    100.times{ normal.update }
    expect(normal.quality).not_to be_negative
  end

  it "Once the sell by date has passed, Quality degrades twice as fast" do
    10.times{ normal.update }
    expect(normal.sell_in).to eq -1
    expect(normal.quality).to eq 8
  end

end
