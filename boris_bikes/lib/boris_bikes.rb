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
    full?
    @docked_bikes << bike
    # @docked_bikes.push(bike)
  end

end

private
def full?
  fail 'Docking station capacity reached' if @docked_bikes.count >= 20
end

private
def empty?
  empty?
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
