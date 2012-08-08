class Course < ActiveRecord::Base
  attr_accessible :address, :content, :end_time, :is_display, :lecturer, :registration_quota, :session, :start_time, :subject
  has_many :enrollments
end
