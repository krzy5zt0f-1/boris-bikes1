require '../lib/boris_bikes'

# feature testing the ability to change the default capacity of the
# docking station instance
docking_station = DockingStation.new
puts "expecting the capacity of a new docking station to equal 20"
puts docking_station.available_bikes.capacity

docking_station2 = DockingStation.new(15)
puts "expecting the capacity of a new docking station to be set by the user - 15"
puts docking_station2.capacity 
