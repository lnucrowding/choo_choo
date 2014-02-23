# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :choo_choo_carriage, :class => 'Carriage' do
    excerpt "A test excerpt"
    activity_type "A test type"
    recipient_id 42
    recipient_type "post"
    created_at Time.now
  end
end
