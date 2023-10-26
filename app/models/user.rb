class User < ApplicationRecord
  has_many :expenses
  has_many :participants
  has_many :sent_payments, class_name: 'Payment', foreign_key: 'payer_id'
  has_many :received_payments, class_name: 'Payment', foreign_key: 'payee_id'
  # ...
end
