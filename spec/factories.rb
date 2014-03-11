FactoryGirl.define do

  factory :user do
    sequence(:username) { |n| "user#{n}" }
  end

  factory :post do
    title "Post Title"
    body "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    user
  end

  factory :comment do
    user
    post
    body "This is a comment"
  end

  factory :activity, :class => 'ChooChoo::Activity' do
  end
end
