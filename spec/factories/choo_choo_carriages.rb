# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :choo_choo_carriage, :class => 'Carriage' do
    excerpt "MyString"
    type ""
  end
end
