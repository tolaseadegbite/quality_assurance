class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.references :evaluation, null: false, foreign_key: true
      t.integer :question_type
      t.boolean :required

      t.timestamps
    end
  end
end
