require 'boris_bikes'

RSpec.describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  describe "read capactiy variable from the docking station instance" do
    it 'returns the capacity value' do
      expect(subject.capacity).to_not eq(nil)
      expect(subject.capacity).to eq(20)
    end

    it 'returns user defined capacity value' do
      docking_station1 = DockingStation.new(1)
      expect(docking_station1.capacity).to eq(1)
    end
  end

  describe ".release_bike" do
    it 'does release_bike return an instance of the Bike class' do
      expect(subject.release_bike).to be_an_instance_of(Bike)
    end

    it "raise an error if @available_bikes is empty" do
      allow(subject.available_bikes).to receive(:count).and_return(0)
      expect{subject.release_bike}.to raise_error
    end
    it "does not release broken bikes" do
      docking_station = DockingStation.new(1)
      docking_station.release_bike
      bike = Bike.new
      bike.report
      docking_station.dock_bike(bike)
      expect {docking_station.release_bike}.to raise_error "no working bikes available"
    end
  end

  it 'does docking_station dock bike' do
    expect(subject).to respond_to(:dock_bike)
  end

  describe ".dock_bike" do
    it 'docking process accepts a Bike as an argument' do
      docking_station = DockingStation.new
      docking_station.release_bike

      docking_station.dock_bike(Bike.new)
      expect(docking_station).to respond_to(:dock_bike).with(1).arguments
    end

    it "raise an error if the docking station is full" do

      expect{subject.dock_bike(Bike.new)}.to raise_error
    end
  end

  it 'accepts returned bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    # empty docking station
    docking_station.release_bike
    # complete test
    docking_station.dock_bike(bike)


    expect(docking_station.available_bikes).not_to eq(nil)
    #expect(docking_station.available_bikes).not_to eq([])
    expect(docking_station.available_bikes.length).to_not eq(0)
  end
end

RSpec.describe Bike do
  it 'to responding to working? method' do
    expect(subject).to respond_to(:working?)
  end
  it "responds to method report" do
    expect(subject).to respond_to(:report)
  end
  describe ".report" do
    it "changes the status of bike to @working = false" do
      subject.report
      expect(subject.working?).to eq false
    end
  end
  it 'does the bike work - true or false' do
    expect(subject.working?).not_to eq(nil)
  end
end
