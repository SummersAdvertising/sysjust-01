class RegistrationsController < Devise::RegistrationsController
	# before_filter :prevent_sign_up, only: [:new]

	# private
	# 	def prevent_sign_up
	# 	redirect_to new_user_session_path and return
	# end
end