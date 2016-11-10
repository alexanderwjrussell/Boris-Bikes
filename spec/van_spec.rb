describe Van do
  it 'stores broken bike in the van' do
    bike = double(:bike, broken?: true)
    station = DockingStation.new
    station.dock(bike)
    expect(subject.collect_broken(station.broken_bikes)).to eq subject.van_bikes
  end
end
