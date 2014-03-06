FactoryGirl.define do

  factory :choo_choo_carriage, :class => 'ChooChoo::Carriage' do
    activity_type "created"
    header "Post Title"
    excerpt "Excerpt from a blog post..."
    tracked_resource_id 1
    tracked_resource_type "post"
    creator_id 1
  end

  factory :choo_choo_locomotive, :class => 'Locomotive' do
  end

  factory :user do
    sequence(:username) { |n| "user#{n}" }
  end

  factory :post do
    title "Post Title"
    body "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    user

    # Factory Girl Callbacks ->> http://robots.thoughtbot.com/aint-no-calla-back-girl
    factory :post_with_comment do
      after_create do |post|
        create(:comment, post: post)
      end
    end
  end

  factory :comment do
    entry 'Comment entry'
  end

end
