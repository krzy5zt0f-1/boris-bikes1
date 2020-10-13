require 'boris_bikes'

RSpec.describe DockingStation do
    it {is_expected.to respond_to(:release_bike)}
end

RSpec.describe Bike do
  it 'to responding to working? method' do
    expect(subject).to respond_to(:working?)
  end
end
