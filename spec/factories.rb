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
  end

  # TODO: carriage factory
  # factory :choo_choo_carriage do
  # end
end
