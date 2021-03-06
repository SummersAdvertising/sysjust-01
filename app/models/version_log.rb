class VersionLog < ActiveRecord::Base
  attr_accessible :memo, :release_date, :version, :appid
  validates :memo, :release_date, :version, :presence => true
  default_scope :order => 'created_at DESC'
end
