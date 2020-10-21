class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.references :lesson, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
