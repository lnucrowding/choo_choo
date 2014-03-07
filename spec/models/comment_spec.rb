require 'spec_helper'

describe Comment do

  # Yes, this is a rather stupid test...
  it "does not create an activity while ChooChoo is not included" do
    expect {
      create(:comment)
    }.to_not change(ChooChoo::Carriage, :count).by 1
  end

  it { should belong_to(:post) }
  it { should belong_to(:user) }

end
