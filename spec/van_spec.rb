require 'spec_helper'

describe Van do

  it { is_expected.to respond_to(:load_bike).with(1).argument }

  it "loads a bike" do
    van = Van.new
    bike = double(:bike, broken: true)
    van_before = subject.bikes.count
    subject.load_bike(bike)
    van_after = subject.bikes.count
    expect(van_after > van_before).to eq(true)
  end

    it 'should raise an error if no bikes available' do
      expect{subject.unload_bike}.to raise_error("error - no bikes available")
    end
end
