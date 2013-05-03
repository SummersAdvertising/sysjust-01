# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :layout_by_resource
  
  before_filter :setup_meta
  before_filter :set_meta
  
  def setup_meta
  	$meta_title = nil
  end
  
  def set_meta
  #do nothing
  end

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

  def require_sign_in
    unless (user_signed_in?)
      flash[:alert] = "You must sign in!"
      redirect_to root_path
    end
  end

  def after_sign_in_path_for(resource)
    admin_news_updates_path
  end
  
 
  	def check_and_parse_str( url )
	
		data_str = read_remote( url )
		
		data = ActiveSupport::JSON.decode(data_str)			
		
		if data_str.nil? || data_str.length <= 0 || data.nil?
			throw
		end
		
		return data
			
		
	end

	def read_remote( url )
	   	
		begin
	   		data_str = open(url).read
	   	rescue
	   		return nil
	   	else	   			   		
	   		return data_str
	   	end
	   	
	end
  
end
