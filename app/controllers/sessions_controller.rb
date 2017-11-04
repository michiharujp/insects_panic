class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "Hello #{user.name}"
      log_in user
      redirect_to user
    else
      flash.now[:danger]  = "Who are you?"
      render :new
    end
  end

  def destroy
  end
end
