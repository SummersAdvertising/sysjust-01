class Course < ActiveRecord::Base
  attr_accessible :address, :content, :end_time, :is_display, :lecturer, :registration_quota, :session, :start_time, :subject
  has_many :enrollments, :dependent => :destroy

  validates :address, :content, :end_time, :lecturer, :registration_quota, :session, :start_time, :subject, :presence => true

  validates :registration_quota, :numericality => { :greater_than => 0 }

  scope :recent, :order => 'updated_at DESC'
  scope :display, where(:is_display => true)
  scope :not_display, where(:is_display => false)
  #default_scope :order => 'created_at DESC'
  scope :start_time, :order => 'start_time DESC'
end
