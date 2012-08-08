class Course < ActiveRecord::Base
  attr_accessible :address, :content, :end_time, :is_display, :lecturer, :registration_quota, :session, :start_time, :subject
  has_many :enrollments, :dependent => :destroy
  
  validates :address, :content, :end_time, :lecturer, :registration_quota, :session, :start_time, :subject, :presence => true

  validates :registration_quota, :numericality => { :greater_than => 0 }  

  scope :recent, :order => 'updated_at DESC'
  scope :display, where(:is_display => true)
  scope :not_display, where(:is_display => false)
  # scope :expire, where((:start_time[6..9].to_i * 365 * 24 * 60 + :start_time[0..1].to_i * 30 * 24 * 60 + :start_time[3..4].to_i * 24 * 60 + :start_time[11..12].to_i * 60 + :start_time[14..15].to_i)<(Time.now.year * 365 * 24 * 60 + Time.now.month * 30 * 24 * 60 + Time.now.day * 24 * 60 + Time.now.hour * 60 + Time.now.min))
end
