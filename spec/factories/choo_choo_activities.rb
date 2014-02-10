# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :choo_choo_activity, :class => 'Activity' do
    activity_type "MyString"
    excerpt "MyString"
  end
end
