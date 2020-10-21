class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :content
      t.string :email

      t.timestamps
    end
  end
end
