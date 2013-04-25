class CrossReaderController < ApplicationController

	def show
	
		url = ""
	
		case params[ :id ]			
			when 'share-main'
				url = "http://203.67.19.84/KMDJ/REST/Blog.svc/31/last/5"
			else
		end
		
		begin
	   		@data = open(url).read
	   	rescue
	   		
	   	else
	   		
	   	end
	   		   	
	end

end
