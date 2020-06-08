class ProductsController < ApplicationController
  before_action :authenticate_user!, :set_product, only: [:show, :edit, :update]

  def index
    @product = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end
  
  def edit
  end

  def create
    @product = Product.new(product_params)
    @product.save
  end

  def update
    if @product.update(product_params)
      redirect_to @product
    end
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :buy_price)
  end
end

