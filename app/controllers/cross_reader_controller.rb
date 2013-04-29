class CrossReaderController < ApplicationController

	def show
	
		url = ""
	
		case params[ :id ]			
			when 'month-writing'
				url = "http://203.67.19.84/KMDJ/REST/Blog.svc/31/list/month/#{params[:year]}/#{params[:month]}"
			else
		end
		
		begin
	   		@data = open(url).read
	   	rescue
	   		
	   	else
	   		
	   	end
	   		   	
	end

end
