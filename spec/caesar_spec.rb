require_relative '../lib/caesar'

describe "The caesar_cipher mehod" do
  it "Should encode the input strings" do
    expect(caesar_cipher("a", 3)).to eq("d")
  end
end