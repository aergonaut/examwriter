class TrueFalseQuestion < Question
  validates :answer, inclusion: { in: %w(T F), message: "must be T/F" }

  def kind
    "True/False"
  end

  def true_false?
    true
  end
end
