class ProductsController < ApplicationController

  def show
    @the_product = Product.find(params[:id])
    render :show
  end

end
