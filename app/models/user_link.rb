class UserLink < ActiveRecord::Base
  belongs_to :user
  belongs_to :link
  attr_accessible :clicks, :short_link, :user_id

  def self.create_short_link
    (("A".."Z").to_a + ("z".."z").to_a + (0..9).to_a).sample(6).join
  end
end
