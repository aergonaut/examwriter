class AddExamIdToQuestions < ActiveRecord::Migration
  def change
    add_reference :questions, :exam, index: true
  end
end
