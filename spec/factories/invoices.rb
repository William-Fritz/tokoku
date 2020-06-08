FactoryBot.define do
  factory :invoice do
    user
    total_amount { "9.99" }
  end
end
