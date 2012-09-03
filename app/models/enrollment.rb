# -*- encoding : utf-8 -*-
class Enrollment < ActiveRecord::Base
  belongs_to :course
  attr_accessible :company, :email, :name, :phone, :professional_title
  
  validates :company, :email, :name, :phone, :professional_title, :presence => true
  
  validates :phone, :numericality => { :only_integer => true }    
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX } 
end
