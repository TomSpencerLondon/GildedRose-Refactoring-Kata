# require File.join(File.dirname(__FILE__), 'gilded_rose')
require 'gilded_rose'

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "foo"
    end

  it 'reduces quality and sell_in each day for normal goods' do
    items = [Item.new("foo", 11, 11)]
    GildedRose.new(items)
    expect{ GildedRose.new(items).update_quality }.to change{ items[0].sell_in }.by(-1)
    # expect(items[0].update_quality).to change{ items[0].value }.by(-1)
     expect{ GildedRose.new(items).update_quality }.to change{ items[0].quality }.by(-1)
  end
end


end
