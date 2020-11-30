class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :statement
      t.text :text
      t.string :answer
      t.integer :daily_access
      t.string :discipline

      t.timestamps
    end
  end
end
