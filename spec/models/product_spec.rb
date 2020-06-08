require 'rails_helper'

RSpec.describe Product, type: :model do
  
  describe "Factory Validation" do
    it "has a valid factory" do
      expect(build(:product)).to be_valid
    end
  end

  let(:product) { build(:product) }

  describe "Model association" do
    it "has many transaction" do
      expect(product).to have_many(:transactions)
    end
  end
end

