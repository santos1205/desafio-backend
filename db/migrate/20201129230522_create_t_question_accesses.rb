class CreateTQuestionAccesses < ActiveRecord::Migration[5.1]
  def change
    create_table :t_question_accesses do |t|
      t.integer :question_id
      t.datetime :date
      t.integer :times_accessed

      t.timestamps
    end
  end
end
