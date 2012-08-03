# -*- encoding : utf-8 -*-
class NewsUpdate < ActiveRecord::Base
  attr_accessible :category, :content, :source, :title
end
