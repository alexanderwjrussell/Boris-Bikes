require 'docking_station'
require 'bike'

describe DockingStation do

  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect { subject.dock(bike) }.to raise_error 'Docking station at capacity'
    end
    it 'has a variable capacity' do
      station = DockingStation.new(42)
      42.times { station.dock Bike.new }
      expect{ station.dock(bike) }.to raise_error 'Docking station at capacity'
    end
  end

  it 'checks manual capacity insert' do
    station = DockingStation.new(42)
    expect(station.capacity).to eq 42
  end

  it 'returns docked bikes' do
    bike = Bike.new
    station = DockingStation.new
    station.dock(bike)
    expect(station.bikes).to eq [bike]
  end

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    subject.dock(Bike.new)
    bike = subject.release_bike #FIX HERE
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:bikes) }

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
      DockingStation::DEFAULT_CAPACITY.times {subject.dock Bike.new}
      expect {subject.dock(bike)}.to raise_error 'Docking station at capacity'
    end
  end




end
