class ProductsController < ApplicationController

  def index
    @products_array = Product.all
    render :index
  end

  def show
    @the_product = Product.find(params[:id])
    @the_bid = Bid.new

    render :show
  end

  def destroy
    @the_product = Product.find(params[:id])
    @the_product.destroy

    redirect_to "/products"
  end

end
