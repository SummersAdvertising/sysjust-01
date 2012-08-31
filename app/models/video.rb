class Video < ActiveRecord::Base
  belongs_to :category
  attr_accessible :content, :title, :video, :image
  mount_uploader :video, VideoUploader
  mount_uploader :image, ImageUploader
  validates :content, :title, :video, :image, :presence => true, :on => :create
  validates :content, :title, :presence => true, :on => :update
  default_scope :order => 'created_at DESC'
end
