FactoryBot.define do
  factory :transaction do
    invoice
    product
    quantity {2}
  end
end
