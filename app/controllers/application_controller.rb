class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #allows access in views
  helper_method :current_user
  
  before_filter :disable_nav, only: [:landing]
  
  def disable_nav
    @disable_nav = true
  end
  
  #method will log user in or return nil
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
