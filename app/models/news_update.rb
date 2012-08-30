# -*- encoding : utf-8 -*-
class NewsUpdate < ActiveRecord::Base
  attr_accessible :category, :content, :source, :title
  validates :category, :content, :source, :title, :presence => true
  default_scope :order => 'updated_at DESC'
end
