class StaticPagesController < ApplicationController
  skip_before_filter :require_login, :only => [:main]

  def main
    @user = current_user ? current_user : User.new
    @link = Link.new
  end

end

