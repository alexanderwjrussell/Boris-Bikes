require 'spec_helper'

describe Bike do

  it "repsonds to working?" do
      expect(subject).to respond_to :working?
  end

end
