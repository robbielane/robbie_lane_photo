class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  helper_method :current_user, :authenticate!

  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate!
    redirect_to root_path unless current_user
  end

  before_filter :add_allow_credentials_headers

   def add_allow_credentials_headers
     response.headers['Access-Control-Allow-Origin'] = request.headers['Origin'] || '*'
     response.headers['Access-Control-Allow-Credentials'] = 'true'
   end

   def options
     head :status => 200, :'Access-Control-Allow-Headers' => 'accept, content-type'
   end
end
