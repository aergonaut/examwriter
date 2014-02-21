class MultipleChoiceQuestion < Question
  validates :answer, inclusion: { in: %w(A B C D), message: "must be one of A/B/C/D" }

  validates_presence_of :option_a, :option_b, :option_c, :option_d

  def self.kind
    "Multiple Choice"
  end

  def multiple_choice?
    true
  end
end
