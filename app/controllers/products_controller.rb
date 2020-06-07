class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @product = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :buy_price)
  end

end

