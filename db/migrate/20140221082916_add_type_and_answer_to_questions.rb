class AddTypeAndAnswerToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :type, :string
    add_column :questions, :answer, :string
  end
end
