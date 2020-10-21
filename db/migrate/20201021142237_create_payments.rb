class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.references :user, foreign_key: true
      t.references :due, foreign_key: true
      t.datetime :expired_at

      t.timestamps
    end
  end
end
