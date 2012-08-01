class NewsUpdate < ActiveRecord::Base
  attr_accessible :category, :content, :source, :title
end
