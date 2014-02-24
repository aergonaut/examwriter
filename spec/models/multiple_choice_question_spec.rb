require 'spec_helper'

describe MultipleChoiceQuestion do
  subject(:question) { FactoryGirl.build :multiple_choice_question }

  describe "answer validation" do
    before do
      question.answer = "E"
      question.valid?
    end

    subject { question.errors.messages }

    it { should have_key(:answer) }
  end

  describe ".kind" do
    subject { question.kind }

    it { should eq("Multiple Choice") }
  end

  describe "#multiple_choice?" do
    subject { question.multiple_choice? }

    it { should be_true }
  end
end
