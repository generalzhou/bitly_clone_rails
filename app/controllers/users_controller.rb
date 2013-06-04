class UsersController < ApplicationController
  skip_before_filter :require_login, :only => [:new, :create, :login]

  def new
    @user = User.new
  end

  def create
    user = User.create(params[:user])
    session[:user_id] = user.id
    redirect_to user
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def login
    user = User.authenticate(params[:user])
    if user
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:error] = "PROPER CREDENTIALS or GTFO"
      redirect_to :root
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to :root
  end

end
