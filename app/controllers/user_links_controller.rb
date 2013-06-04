class UserLinksController < ApplicationController

  def show
    short_link = UserLink.find_by_short_link(params[:short_link])
    url = short_link.link.url
    redirect_to "http://" + url
  end

end
