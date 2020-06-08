require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe "Factory Validations" do
    it "has a valid factory" do
      expect(build(:transaction)).to be_valid
    end
  end

  let(:transaction) { build(:transaction) }

  describe "Model association" do
    it "belongs to invoices" do
      expect(transaction).to belong_to(:invoice).optional
    end
    it "belongs to products" do
      expect(transaction).to belong_to(:product)
    end
  end
end

