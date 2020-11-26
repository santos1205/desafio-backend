class CreateQuestionAccesses < ActiveRecord::Migration[5.1]
  def change
    create_table :question_accesses do |t|
      t.datetime :date
      t.integer :times_accessed
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
