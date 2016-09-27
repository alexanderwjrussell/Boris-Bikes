require 'spec_helper'

describe DockingStation do

  it "responds to release_bike" do
      expect(subject).to respond_to :release_bike
  end

  it "gets a bike and expects it to be working" do
    bike = subject.release_bike
    expect(bike.working?).to eq(true)
  end

end
