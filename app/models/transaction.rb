class Transaction < ApplicationRecord
  belongs_to :invoice, optional: true
  belongs_to :product
end
