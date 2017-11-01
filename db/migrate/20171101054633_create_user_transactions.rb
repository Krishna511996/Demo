class CreateUserTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :user_transactions do |t|
      t.references :user, foreign_key: true
      t.string :transaction_type
      t.datetime :transaction_date
      t.float :transaction_amount

      t.timestamps
    end
  end
end
