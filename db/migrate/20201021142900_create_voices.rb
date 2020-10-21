class CreateVoices < ActiveRecord::Migration[5.0]
  def change
    create_table :voices do |t|
      t.references :content, foreign_key: true
      t.string :path

      t.timestamps
    end
  end
end
