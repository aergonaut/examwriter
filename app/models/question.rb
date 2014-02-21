class Question < ActiveRecord::Base
  validates :prompt, presence: true

  belongs_to :exam
end
