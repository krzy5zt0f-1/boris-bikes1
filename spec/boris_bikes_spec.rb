require 'boris_bikes'

RSpec.describe DockingStation do
    it {is_expected.to respond_to(:release_bike)}
end
