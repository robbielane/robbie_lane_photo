class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  helper_method :current_user, :authenticate!
  before_action :set_cart

  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate!
    redirect_to root_path unless current_user
  end
end
