FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "user#{n}" }
  end

  factory :post do
    title "Post Title"
    body "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
  end

  # TODO: carriage factory
  # factory :choo_choo_carriage do
  # end
end
