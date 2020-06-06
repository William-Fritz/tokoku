require 'rails_helper'

RSpec.describe Invoice, type: :model do

  it "has a valid factory" do
    expect(build(:invoice)).to be_valid
  end
end

