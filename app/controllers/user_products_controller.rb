class UserProductsController < ApplicationController

  def new
    @the_user = User.find(params[:user_id])
    @the_product = @the_user.products.new

    render :new
  end

  def create
    @the_user = User.find(params[:user_id])
    @the_product = @the_user.products.new(product_params)

    if @the_product.save
      flash[:notice] = "Product #{@the_product.title} created"
      redirect_to user_path(@the_user)
    else
      flash.now[:alert] = "Product couldn't be created"
      render :new
    end
  end


  private

  def product_params
    params.require(:product).permit(:title, :description, :deadline)
  end

end
