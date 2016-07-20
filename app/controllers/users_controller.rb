class UsersController < ApplicationController

  def new
    @the_user = User.new
    render :new
  end

  def create
    @the_user = User.new(user_params)

    if @the_user.save
      flash[:notice] = "User #{@the_user.email} created"
      redirect_to "/"
    else
      flash.now[:alert] = "User couldn't be created"
      render :new
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
