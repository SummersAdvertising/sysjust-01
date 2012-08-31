# -*- encoding : utf-8 -*-
class Banner < ActiveRecord::Base
  attr_accessible :category, :content_01, :content_02, :content_03, :hyperlink_01, :hyperlink_02, :hyperlink_03, :title_01, :title_02, :title_03, :excerpt_image_01, :excerpt_image_02, :excerpt_image_03

  has_attached_file :excerpt_image_01, :styles => { :medium => "250x170>", :thumb => "100x68>" }
  has_attached_file :excerpt_image_02, :styles => { :medium => "250x170>", :thumb => "100x68>" }
  has_attached_file :excerpt_image_03, :styles => { :medium => "250x170>", :thumb => "100x68>" }

  validates :content_01, :content_02, :content_03, :hyperlink_01, :hyperlink_02, :hyperlink_03, :title_01, :title_02, :title_03, :excerpt_image_01, :excerpt_image_02, :excerpt_image_03, :presence => true, on: :create
  validates :content_01, :content_02, :content_03, :hyperlink_01, :hyperlink_02, :hyperlink_03, :title_01, :title_02, :title_03, :presence => true, on: :update
  scope :recent, :order => 'updated_at DESC'


end
