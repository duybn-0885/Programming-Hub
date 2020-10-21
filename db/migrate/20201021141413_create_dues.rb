class CreateDues < ActiveRecord::Migration[5.0]
  def change
    create_table :dues do |t|
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
