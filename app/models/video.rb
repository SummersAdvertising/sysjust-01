class Video < ActiveRecord::Base
  belongs_to :category
  attr_accessible :content, :title, :video, :image
  mount_uploader :video, VideoUploader
  mount_uploader :image, ImageUploader
end
