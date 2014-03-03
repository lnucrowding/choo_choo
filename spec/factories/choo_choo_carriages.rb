# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :choo_choo_carriage, :class => 'ChooChoo::Carriage' do
    activity_type "created"
    header "Post Title"
    excerpt "Excerpt from a blog post..."
    tracked_resource_id 1
    tracked_resource_type "post"
    creator_id 1
  end
end
