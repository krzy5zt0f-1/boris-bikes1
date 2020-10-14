require 'boris_bikes'

RSpec.describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  describe ".release_bike" do
    it 'does release_bike return an instance of the Bike class' do
      expect(subject.release_bike).to be_an_instance_of(Bike)
    end
    it "raise an error if @available_bikes is empty" do
      subject.release_bike
      expect{subject.release_bike}.to raise_error
    end
end
  it 'does docking_station dock bike' do
    expect(subject).to respond_to(:dock_bike)
  end

  it 'docking process accepts a Bike as an argument' do
    subject.dock_bike(Bike.new)
    expect(subject).to respond_to(:dock_bike).with(1).arguments
  end

  it 'accepts returned bike' do
    bike = Bike.new
    subject.dock_bike(bike)

    expect(subject.available_bikes).not_to eq(nil)
    #expect(subject.available_bikes).not_to eq([])
    expect(subject.available_bikes.length).to eq(2)
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
