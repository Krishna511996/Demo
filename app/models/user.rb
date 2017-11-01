class User < ApplicationRecord
  has_many :userTransactions, dependent: :destroy
end
