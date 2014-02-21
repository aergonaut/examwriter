# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    prompt "MyString"
    option_a "MyString"
    option_b "MyString"
    option_c "MyString"
    option_d "MyString"
  end
end
