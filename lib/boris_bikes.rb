class DockingStation
  attr_reader :available_bikes

  def initialize
    @available_bikes = []
  end

  def release_bike
    return Bike.new
  end

  def dock_bike(returned_bike)
    @available_bikes << returned_bike
  end
end

class Bike
  def working?
    return true  #assume true as we assume all bikes are working
  end
end
