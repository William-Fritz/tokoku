require 'rails_helper'

RSpec.describe ProductsController do
  describe 'GET #index' do
    before { get:index }
    
    it 'assigns @product' do
      product = create(:product)
      expect(assigns(:product)).to eq([product])
    end

    it 'renders index template' do
      expect(response).to render_template('index')
    end
  end

  describe 'GET #show' do
    before { get:show, params: params }
    
    let(:params) do
      { id: product.id }
    end
    let!(:product) { create(:product) }

    it 'assigns @product' do
      expect(assigns(:product)).to eq(product)
    end

    it 'renders the show template' do
      expect(response).to render_template(:show)
    end
  end

  describe 'GET #new' do
    before { get :new }

    context 'when initialized' do
      subject(:product) { Product.new }
    end

    it 'assigns @product' do
      expect(assigns(:product)).to be_a_new(Product)
    end
  end

  describe 'POST #create' do
    subject { post :create, params: params }
    let(:params) { { product: { name: 'beras', buy_price: 10 }}}
    
    it 'creates a product' do
      expect { subject }.to change(Product, :count)
        .from(0).to(1)
    end
  end
end

