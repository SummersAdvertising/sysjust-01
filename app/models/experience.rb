class Experience < ActiveRecord::Base
	attr_accessible :attendant_number, :company_name, :contact_person, :email, :phone_number, :professional_title, :comment

	validates :attendant_number, :numericality => { :greater_than => 0 }
end
