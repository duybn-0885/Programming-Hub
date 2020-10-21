class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.integer :role
      t.datetime :delete_at
      t.integer :login_attemt_count
      t.datetime :login_locked_at

      t.timestamps
    end
  end
end
