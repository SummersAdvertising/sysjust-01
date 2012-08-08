# -*- encoding : utf-8 -*-
class Experience < ActiveRecord::Base
	attr_accessible :attendant_number, :company_name, :contact_person, :email, :phone_number, :professional_title, :comment

	validates :attendant_number, :company_name, :contact_person, :email, :phone_number, :professional_title, :presence => true

	validates :attendant_number, :numericality => { :greater_than => 0 }	

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, format: { with: VALID_EMAIL_REGEX }    
    
    validates :phone_number, :numericality => { :only_integer => true, :message => "Only number allowed" }    
end
