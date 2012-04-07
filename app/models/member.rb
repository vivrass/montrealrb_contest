class Member < ActiveRecord::Base
  attr_accessible :email, :name

  def gravatar_image
    "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(@email)}?s=50"
  end
end
