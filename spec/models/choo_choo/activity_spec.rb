require 'spec_helper'

module ChooChoo
  describe Activity do

    describe "parent events" do
      it "is created when a parent is created" do
        expect {
          create(:post)
        }.to change {Activity.count}.by(1)
      end

      it "is updated when a parent is updated" do
        post = create(:post)
        comment = create(:comment, post: post)
        post.update_attributes(title: 'Changed title')

        expect(post.activity.last_action).to eq 'updated'
        expect(post.activity.last_updated_node).to eq post
      end

      it "is left when a parent is deleted" do
        post = create(:post)
        activity = post.activity
        post.destroy

        expect(activity.last_action).to eq 'destroyed'
        expect(activity.last_updated_node).to be_nil
      end
    end

    describe "child events" do
      it "is updated when a child is created" do
        post = create(:post)
        comment = create(:comment, post: post)

        expect(post.activity.last_action).to eq 'created'
        expect(post.activity.last_updated_node).to eq comment
      end


      it "is updated when a child is updated" do
        post = create(:post)
        comment = create(:comment, post: post)
        comment.update_attributes(body: 'Changed comment')

        expect(post.activity.last_action).to eq 'updated'
        expect(post.activity.last_updated_node).to eq comment
      end

      it "is updated when a child is deleted" do
        post = create(:post)
        comment = create(:comment, post: post)
        comment.destroy

        expect(post.activity.last_action).to eq 'deleted'
        expect(post.activity.last_updated_node).to eq comment
      end

    end
  end
end
