class Question < ActiveRecord::Base
  validates :prompt, presence: true

  belongs_to :exam

  def kind
    "Generic"
  end

  def true_false?
    false
  end

  def multiple_chocie?
    false
  end
end
