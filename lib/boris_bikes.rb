class DockingStation
  attr_reader :docked_bikes

  # attr reader basically does
=begin
  def docked_bikes
    @docked_bikes
  end
=end

  def initialize
  @docked_bikes = []
  end

  def release_bike
    @bike = Bike.new
  end
  
  
  def dock(bike)
    @docked_bikes << bike
    # @docked_bikes.push(bike)
  end

end


class Bike
  def working?
    true
  end
end


=begin


  def docked_bikes
    @docked_bikes = []
    puts docked_bikes
  end


=end