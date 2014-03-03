require 'spec_helper'

describe Post do

  it "creates an activity when created" do
    create(:post)
    expect(ChooChoo::Carriage.count).to be 1
  end

end
