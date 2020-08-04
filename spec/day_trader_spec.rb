require_relative "../lib/day_trader"

describe "day_trader method find the best day to buy and the best day to sell to get the max profit" do
  it "find the index of the cheapest value to buy and the index of the highest value to sell" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])  # $15 - $3 == $12
  end
end