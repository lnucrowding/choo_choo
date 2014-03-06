require 'spec_helper'

describe Post do

  it "creates an activity when created" do
    expect {
      create(:post)
    }.to change(ChooChoo::Carriage, :count).by 1
  end

  it "is updated when a child is updated" do
    post = create(:post)
    first_timestamp = post.updated_at

    post.title = "Another Title"
    post.save!

    # TODO: check that the carriages updated_at has changed as well
  end

  it "does not create a new activity when a child is updated" do
    expect {
      create(:comment) # TODO: to that post
    }.to_not change(ChooChoo::Carriage, :count)
  end


end
