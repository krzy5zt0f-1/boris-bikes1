require 'boris_bikes'

RSpec.describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}
  it 'does release_bike return an instance of the Bike class' do
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end
end

RSpec.describe Bike do
  it 'to responding to working? method' do
    expect(subject).to respond_to(:working?)
  end
  it 'does the bike work - true or false' do
    expect(subject.working?).not_to eq(nil)
  end
end
