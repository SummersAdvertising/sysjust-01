class Enrollment < ActiveRecord::Base
  belongs_to :course
  attr_accessible :company, :email, :name, :phone, :professional_title
end
