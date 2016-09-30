
describe Van do
  it 'collects broken bikes' do
    bike = double(:bike, broken?: true)
    subject.dock(bike)
    expect(subject.collect_broken(bike)).to eq bike
  end

  it 'stores broken bike in the van' do
    bike = double(:bike, broken?: true)
    subject.dock(bike)
    expect(subject.collect_broken(bike)).to eq @van_bikes[0]
  end
end
