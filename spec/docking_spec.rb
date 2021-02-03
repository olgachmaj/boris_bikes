require "boris_bikes"


describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it 'gets a bike and expects bike to be working' do
      bike = subject.release_bike
      expect(bike).to be_working
      #expect(Bike.working?(bike)).to eq true
  end
  
  it 'docks a bike at a docking station' do
    bike = subject.release_bike # create the bike
    # dock the bike
    subject.dock(bike)
    # check that the bike was docked, to pass test
     expect(subject.docked_bikes).to include(bike)
  end

end




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