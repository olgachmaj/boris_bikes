require "boris_bikes"


describe DockingStation do

  describe "#release_bike" do
    it {is_expected.to respond_to :release_bike}

    it 'fails to release bike, if none are available' do
      station = DockingStation.new
      station.docked_bikes.empty?
      expect { station.release_bike }.to raise_error "No bikes available"
              # errors wrapped in curlys, not ()'s
    end

    it 'gets a Bike and expects Bike to be working' do
        station = DockingStation.new
        bike = (Bike.new)
        station.dock(bike)
        expect(station.release_bike).to be_a Bike
        expect(bike).to be_working
        #expect(Bike.working?(bike)).to eq true
    end
  end

  describe "#dock" do
    it 'docks a bike at a docking station' do
      station = DockingStation.new
      bike = (Bike.new)
      expect(station.dock(bike)).to include(bike) # check that the bike was docked, to pass test
    end

    it 'wont accept more bikes than their capacity' do
      station = DockingStation.new
      20.times { station.dock Bike.new }
      expect { station.dock(Bike.new) }.to raise_error "Docking station capacity reached"
    end
  end



end

# release bike if docked_bikes.notempty


=begin
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
