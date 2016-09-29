require 'docking_station'
require 'bike'

describe DockingStation do

  it 'returns docked bikes' do
    bike = Bike.new
    station = DockingStation.new
    station.dock(bike)
    expect(station.bike).to eq [bike]
  end

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    subject.dock(Bike.new)
    bike = subject.release_bike #FIX HERE
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:bike) }

  describe '#release_bike' do
    it 'returns error when no bike available' do
      #subject.release_bike
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'returns error when docking station is full' do
    #subject.dock(Bike.new)
      bike = Bike.new
      20.times {subject.dock Bike.new}
      expect {subject.dock(bike)}.to raise_error 'Docking station at capacity'
    end
  end




end
