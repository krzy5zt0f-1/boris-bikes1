class DockingStation
  attr_reader :available_bikes

  def initialize
    arr = [*1..20]
    @available_bikes = arr.map { |x| Bike.new }
  end

  def release_bike
    (raise StandardError.new "no bikes available") if self.empty?

    bike_to_be_released = @available_bikes[0]
    @available_bikes.shift
    return  bike_to_be_released
  end

  def dock_bike(returned_bike)
    (raise StandardError.new "Docking station full") if self.full?
    @available_bikes << returned_bike
  end

  private
  def full?
    @available_bikes.count >= 20
  end

  def empty?
    @available_bikes.count == 0
  end
end

class Bike
  def working?
    return true  #assume true as we assume all bikes are working
  end
end
