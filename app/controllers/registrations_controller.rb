# -*- encoding : utf-8 -*-
class RegistrationsController < Devise::RegistrationsController
	#only admin can access sign up page
	before_filter :prevent_sign_up, only: [:new]

	private
		def prevent_sign_up
		redirect_to new_user_session_path and return
	end
end
