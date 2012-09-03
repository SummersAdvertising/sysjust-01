# -*- encoding : utf-8 -*-
class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :videos
end
