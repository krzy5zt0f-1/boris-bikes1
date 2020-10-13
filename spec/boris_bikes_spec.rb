require 'boris_bikes'

RSpec.describe DockingStation do
  #it "#Checking for the 'release_bike' method" do
    #expect(subject).to respond_to(:release_bike)
    it {is_expected.to respond_to(:release_bike)}
  #end
end
