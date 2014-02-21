class Question < ActiveRecord::Base
  validates :prompt, presence: true

  belongs_to :exam

  def self.kind
    "Generic"
  end

  def kind
    self.class.kind
  end

  def true_false?
    false
  end

  def multiple_chocie?
    false
  end
end
