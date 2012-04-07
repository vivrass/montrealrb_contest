class Prize < ActiveRecord::Base
  attr_accessible :description, :image_upload, :name, :number
  attr_accessor :image_upload

  belongs_to :image

  before_save :create_image

  private
  def create_image
    if self.image_upload
      self.image = Image.create!(
        :name      => self.image_upload.original_filename,
        :mime_type => self.image_upload.content_type,
        :data      => self.image_upload.read
      )
    end
  end
end
