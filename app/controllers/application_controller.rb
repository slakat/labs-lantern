class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :admin

  protected 

  

  def current_user
    @current_user ||= session.has_key?(:user_id) && User.find(session[:user_id])
  end

  

  def admin
    current_user && current_user.role == 'admin'
  end

  private

  def require_admin
    redirect_to new_session_path unless admin
  end
end
