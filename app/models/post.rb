# -*- encoding : utf-8 -*-
class Post < ActiveRecord::Base
  attr_accessible :content
  validates :content, presence: true, :length => { :maximum =>25 }
end
