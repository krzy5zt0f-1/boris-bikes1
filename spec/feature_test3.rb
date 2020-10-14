require '../lib/boris_bikes'

docking_station = DockingStation.new
#Initialisation creates a single bike in the dociking DockingStation

# Expectation of an error, due to docking station already having a bike
puts "expecting an error on completion of code - no error initially"
puts docking_station.dock_bike(Bike.new)
