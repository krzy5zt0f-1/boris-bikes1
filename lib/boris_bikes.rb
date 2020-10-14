class DockingStation
  attr_reader :available_bikes

  def initialize
    arr = [*1..20]
    @available_bikes = arr.map { |x| Bike.new }
  end

  def release_bike
    if @available_bikes.size == 0
      raise StandardError.new "no bikes available"
    else
    bike_to_be_released = @available_bikes[0]
    @available_bikes.shift
  end
   return  bike_to_be_released
  end

  def dock_bike(returned_bike)
    if @available_bikes.size == 20
      raise StandardError.new "Docking station full"
    else
      @available_bikes << returned_bike
    end
  end
end

class Bike
  def working?
    return true  #assume true as we assume all bikes are working
  end
end
