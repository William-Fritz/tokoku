class ProductsController < ApplicationController
  def create
    @product = Product.new(product_params)
    @product.save
  end

  private
  def product_params
    params.require(:product).permit(:name, :buy_price)
  end

end

