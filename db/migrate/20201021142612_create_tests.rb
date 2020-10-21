class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.references :lesson, foreign_key: true
      t.integer :minimum_score

      t.timestamps
    end
  end
end
