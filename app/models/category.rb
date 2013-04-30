# -*- encoding : utf-8 -*-
class Category < ActiveRecord::Base
  attr_accessible :name, :priority, :namehash
  has_many :videos
end
