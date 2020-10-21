class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.references :question, foreign_key: true
      t.text :content
      t.boolean :is_true
      t.integer :order

      t.timestamps
    end
  end
end
