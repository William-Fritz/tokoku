require 'rails_helper'

RSpec.describe Invoice, type: :model do
  
  describe "Model validations" do
    it "has a valid factory" do
      expect(build(:invoice)).to be_valid
    end
  end

  let(:invoice) { build(:invoice) }

  describe "Model association" do
    it "has many transaction" do
      expect(invoice).to have_many(:transactions)
    end
    it "belongs to user" do
      expect(invoice).to belong_to(:user)
    end
  end
end

