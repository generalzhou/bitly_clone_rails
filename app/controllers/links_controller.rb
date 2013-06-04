class LinksController < ApplicationController

  include ApplicationHelper

  def create
    link = Link.find_or_create_by_url(params[:link])
    link.user_links << UserLink.create(:short_link => UserLink.create_short_link, 
                                        :user_id => current_user.id)
    flash[:notice] = link.user_links.last.short_link
    redirect_to :root
  end

end
