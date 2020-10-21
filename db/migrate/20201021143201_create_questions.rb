class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.text :content
      t.references :questionable, polymorphic: true
      t.integer :order

      t.timestamps
    end
  end
end
