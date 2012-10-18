# -*- encoding : utf-8 -*-
class Video < ActiveRecord::Base
  belongs_to :category
  attr_accessible :content, :title, :video, :image
  mount_uploader :video, VideoUploader
  mount_uploader :image, ImageUploader
  validates :content, :title, :presence => true, :on => :create
  validates :content, :title, :presence => true, :on => :update  
  
  validates :video, :image, :presence => true, :on => :create #, :message => '請選擇檔案'

  validates :content, :length => { :maximum => 77 }
  validates :title, :length => { :maximum => 17 }
  default_scope :order => 'created_at DESC'
end
