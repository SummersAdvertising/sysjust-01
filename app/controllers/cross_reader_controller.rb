class CrossReaderController < ApplicationController

	def show
	
		url = ""
	
		case params[ :id ]			
			when 'month-writing'
				url = "http://#{$api_domain}/KMDJ/REST/Blog.svc/#{$blog_id}/list/month/#{params[:year]}/#{params[:month]}"
			else
		end
		
		begin
	   		@data = open(url).read
	   	rescue
	   		
	   	else
	   		
	   	end
	   		   	
	end

end
