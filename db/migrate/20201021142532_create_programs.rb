class CreatePrograms < ActiveRecord::Migration[5.0]
  def change
    create_table :programs do |t|
      t.references :course, foreign_key: true
      t.string :name
      t.text :input
      t.text :output
      t.integer :parent_id

      t.timestamps
    end
  end
end
