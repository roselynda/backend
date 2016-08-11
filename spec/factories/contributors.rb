# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contributor do
    user_id 1
    design_id 1
    owner false
  end
end
