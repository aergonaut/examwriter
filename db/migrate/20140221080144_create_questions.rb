class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :prompt
      t.string :option_a
      t.string :option_b
      t.string :option_c
      t.string :option_d

      t.timestamps
    end
  end
end
