require "boris_bikes"

describe Bike do
  it { is_expected.to respond_to(:working?) }

 #  it { is_expected.to respond_to(:zero?).with(0).arguments }
  
end





=begin
expect(@bike).to respond_to(:working?)

  it {DockingStation.release_bike is_expected.respond_to?(:working?)}
end

describe "release bike" do
  it "releases a bike" do
    expect(Dockingstation.new().releasebike()).to eq "not equal nil"
  end
end
 

describe DockingStation do
  describe "release bike" do
    it "releases bike" do
      expect()
    end
  end
end

it "returns 'fizz' when passed 3" do
  expect(fizzbuzz(3)).to eq "fizz"
end
=end