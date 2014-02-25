require 'spec_helper'

describe TrueFalseQuestion do
  subject(:question) { FactoryGirl.build :true_false_question }

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

    it { should eq("True/False") }
  end

  describe "#true_false?" do
    subject { question.true_false? }

    it { should be_true }
  end
end
