class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Hello Kid"
      redirect_to root_path
    else
      render 'static_pages/home'
    end
  end

  def update
  end

  private

    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end

end
