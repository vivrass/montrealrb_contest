class Image < ActiveRecord::Base
  attr_accessible :name, :mime_type, :data

  has_one :prize
end
