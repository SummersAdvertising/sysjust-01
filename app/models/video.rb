# -*- encoding : utf-8 -*-
class Video < ActiveRecord::Base
  belongs_to :category
  attr_accessible :content, :title, :video, :image
  mount_uploader :video, VideoUploader
  mount_uploader :image, ImageUploader
  validates :content, :title, :video, :image, :presence => true, :on => :create
  validates :content, :title, :presence => true, :on => :update

  validates :content, :length => { :maximum => 66 }
  validates :title, :length => { :maximum => 17 }
  default_scope :order => 'created_at DESC'
end
