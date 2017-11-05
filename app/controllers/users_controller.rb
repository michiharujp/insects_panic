class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Hello Kid"
      redirect_to @user
    else
      render 'static_pages/home'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "changed"
      redirect_to @user
    else
      flash.now[:danger]  = "invalid"
      render :edit
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation, :sex)
    end

end
