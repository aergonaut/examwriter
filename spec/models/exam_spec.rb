require 'spec_helper'

describe Exam do
  subject(:exam) { FactoryGirl.build :exam }

  describe "title validation" do
    before do
      exam.title = ""
      exam.valid?
    end

    subject { exam.errors.messages }

    it { should have_key(:title) }
  end
end
