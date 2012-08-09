class Video < ActiveRecord::Base
  belongs_to :category
  attr_accessible :content, :title
end
