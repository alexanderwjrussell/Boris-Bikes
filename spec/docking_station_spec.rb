require 'docking_station'

describe DockingStation do

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = Bike.new#subject.release_bike
    expect(bike).to be_working
  end
  it { is_expected.to respond_to(:bike) }

describe '#release_bike' do
  it 'returns error when no bike available' do
    #subject.release_bike
    expect {subject.release_bike}.to raise_error 'No bikes available'
  end
end

end
