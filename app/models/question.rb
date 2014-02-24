class Question < ActiveRecord::Base
  validates :prompt, presence: true

  validates :type, inclusion: { in: %w(MultipleChoiceQuestion TrueFalseQuestion), message: "must be either multiple choice or true/false" }

  belongs_to :exam

  def self.new_by_type(attributes)
    type = attributes.delete(:type)
    klass = if %w(MultipleChoiceQuestion TrueFalseQuestion).include?(type)
      type.constantize
    else
      Question
    end
    klass.new(attributes)
  end

  def self.kind
    "Generic"
  end

  def kind
    self.class.kind
  end

  def true_false?
    false
  end

  def multiple_choice?
    false
  end
end
