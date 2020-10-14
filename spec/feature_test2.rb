# testing against a docking_station with no bikes
# we expect failure

require './../lib/boris_bikes'

 docking_station = DockingStation.new

 puts "expect this to fail first time around"
 docking_station.release_bike
 puts docking_station.release_bike
