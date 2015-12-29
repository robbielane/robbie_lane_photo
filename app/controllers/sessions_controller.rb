class SessionsController < ApplicationController
  before_action :robbie?, only: [:new]

  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:notice] = "Welcome #{@user.name}"
      redirect_to admin_path
    else
      flash.now[:error] = "Invalid Credentials"
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  def robbie?
    redirect_to admin_path if current_user
  end
end
