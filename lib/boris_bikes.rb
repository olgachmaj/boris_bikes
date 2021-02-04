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
    if @docked_bikes.empty?
      raise "No bikes available"
    end 
    @docked_bikes.pop
  end
  
  
  def dock(bike)
    capacity = 3
    if @docked_bikes.count >= capacity
      raise "Docking station capacity reached"
    end 
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