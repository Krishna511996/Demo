json.extract! user_transaction, :id, :user_id, :transaction_type, :transaction_date, :transaction_amount, :created_at, :updated_at
json.url user_transaction_url(user_transaction, format: :json)
