# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    prompt "MyString"

    factory :multiple_choice_question, class: "MultipleChoiceQuestion" do
      option_a "MyString"
      option_b "MyString"
      option_c "MyString"
      option_d "MyString"
      answer "D"
    end

    factory :true_false_question, class: "TrueFalseQuestion" do
      answer "T"
    end
  end
end
