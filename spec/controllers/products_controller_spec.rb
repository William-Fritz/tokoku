require 'rails_helper'

RSpec.describe ProductsController do

  describe 'POST #create' do
    subject { post :create, params: params }
    let(:params) { { product: { name: 'beras', buy_price: 10 }}}
    
    it 'creates a product' do
      expect { subject }.to change(Product, :count)
        .from(0).to(1)
    end
  end
end

