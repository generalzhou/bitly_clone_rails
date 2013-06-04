class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :require_login

  include ApplicationHelper

  private
    
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to :root
    end
  end

  def logged_in?
    !!current_user
  end

end
