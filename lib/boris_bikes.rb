class DockingStation
  def release_bike
    return Bike.new
  end
end

class Bike
  def working?
    return true  #assume true as we assume all bikes are working
  end
end
