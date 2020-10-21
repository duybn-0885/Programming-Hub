class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.boolean :is_free
      t.integer :parent_id
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
