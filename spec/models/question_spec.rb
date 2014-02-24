require 'spec_helper'

describe Question do
  subject(:question) { FactoryGirl.build :question }

  it { should_not be_valid }

  describe "prompt validation" do
    subject { question.errors.messages }

    context "when prompt is set" do
      before do
        question.prompt = "blah blah"
        question.valid?
      end

      it { should_not have_key(:prompt) }
    end

    context "when prompt is empty" do
      before do
        question.prompt = ""
        question.valid?
      end

      it { should have_key(:prompt) }
    end
  end

  describe ".new_by_type" do
    subject { Question.new_by_type(type: type) }

    context "with multiple choice question type" do
      let(:type) { "MultipleChoiceQuestion" }
      
      it { should be_an_instance_of(MultipleChoiceQuestion) }
    end

    context "with true false question type" do
      let(:type) { "TrueFalseQuestion" }

      it { should be_an_instance_of(TrueFalseQuestion) }
    end
  end

  describe "#true_false?" do
    subject { question.true_false? }

    it { should be_false }
  end

  describe "#multiple_choice?" do
    subject { question.multiple_choice? }

    it { should be_false }
  end
end
