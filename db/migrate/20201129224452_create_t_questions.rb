class CreateTQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :t_questions do |t|
      t.integer :question_id
      t.string :statement
      t.text :text
      t.string :answer
      t.integer :daily_access
      t.string :discipline

      t.timestamps
    end
  end
end
