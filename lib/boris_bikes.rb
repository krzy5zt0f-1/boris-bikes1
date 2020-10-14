class DockingStation
  attr_reader :available_bikes
  attr_accessor :capacity
  @@DEFAULT_CAPACITY = 20

  def initialize(capacity = @@DEFAULT_CAPACITY)
    arr = [*1..@@DEFAULT_CAPACITY]
    @available_bikes = arr.map { |x| Bike.new }
    @capacity = capacity
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
    @available_bikes.count >= @@DEFAULT_CAPACITY
  end

  def empty?
    @available_bikes.count == 0
  end
end

class Bike

  def initialize
    @working = true
  end

  def working?
    return @working  #assume true as we assume all bikes are working
  end

  def report
    @working = false
  end
end
