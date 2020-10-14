require '../lib/boris_bikes'
# Feature test to track the behaviour when docingsize is meant to be 20

docking_station = DockingStation.new

# release 1 bike

docking_station.release_bike

#trying to fit in 20 bikes in a single docking DockingStation
puts "Expect for it to fail 19 times"
20.times {docking_station.dock_bike Bike.new}
