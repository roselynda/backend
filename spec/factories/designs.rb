# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :design do
    name "MyString"
    json "MyText"
    updated_by 1
  end
end
