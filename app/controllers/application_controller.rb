class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :layout_by_resource

  def layout_by_resource
    if devise_controller? && resource_name == :user
      "admin"
    else
      "application"
    end
  end

  def require_is_admin
    unless (current_user && current_user.is_admin?)
      flash[:alert] = "You must be admin!"
      redirect_to root_path
    end
  end
end
