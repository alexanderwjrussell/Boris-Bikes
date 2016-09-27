require 'spec_helper'

describe DockingStation do

  it "responds to release_bike" do
      expect(subject).to respond_to :release_bike
  end

  it "gets a bike and expects it to be working" do
    bike1 = Bike.new
    expect(bike1.working?).to eq(true)
  end

  it "docks returned bike" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  describe '#release_bike' do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "will not release a bike if there are none" do
      expect{subject.release_bike}.to raise_error("No bikes available")
    end
  end

  describe '#dock' do
    it "doesn't allow docking when station full" do
      subject.dock(Bike.new)
      expect{subject.dock Bike.new}.to raise_error("Station Full")
    end
  end

end
