class Link < ActiveRecord::Base
  has_many :user_links
  has_many :users, :through => :user_links
  attr_accessible :url



end
