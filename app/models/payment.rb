class Payment < ApplicationRecord
  belongs_to :payer
  belongs_to :payee
end
