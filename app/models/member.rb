class Member < ActiveRecord::Base
  attr_accessible :email, :name

  validates_presence_of :email, :name
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  def gravatar_image
    "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}?s=50"
  end
end
