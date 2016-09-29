require 'spec_helper'

describe Bike do
  it { is_expected.to respond_to
  :broken}

  it {is_expected.to respond_to :report_broken}

  it "bike is broken after being reported as broken" do
    subject.report_broken
    expect(subject.broken).to eq(true)
  end
end
