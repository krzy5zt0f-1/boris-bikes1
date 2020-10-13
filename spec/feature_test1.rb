require './../lib/boris_bikes'

docking_station = DockingStation.new
#feature test for bike release
bike = docking_station.release_bike
#feature test for bike condition
puts 'Does the bike work? True or false?'
puts bike.working?
#feature test for docking a bike
docking_station.dock_bike(bike)
