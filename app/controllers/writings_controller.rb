class WritingsController < ApplicationController

	before_filter :setup_sidebar

	def index
	
		@writings = check_and_parse_str("http://203.67.19.84/KMDJ/REST/Blog.svc/31/last/5")
	   
	end
	
	def show
	
		@id = params[ :id ]
		
		@writing = check_and_parse_str( "http://203.67.19.84/KMDJ/REST/Blog.svc/31/article/#{@id}" )		
		@category_writings = check_and_parse_str("http://203.67.19.84/KMDJ/REST/Blog.svc/31/list/class/#{@writing["classno"]}/5")	end
	
	def category
		
		params[ :page ] = 1 if params[ :page ].nil?
		
		url = WritingsHelper.class_path( params[ :id ], params[ :page ] )
		
		data_str = read_remote(url)
		
		@category = @categories.select{| hash | hash["classno"] == params[ :id ] }.first
		
		if data_str.nil?			
			
		else
			@list = ActiveSupport::JSON.decode(data_str)
			@writings = @list["list"]
			
		end
		
		
	
	end

private

	def setup_sidebar
		
		@categories  = check_and_parse_str( "http://203.67.19.84/KMDJ/REST/Blog.svc/31/class" )
		@summery = check_and_parse_str( "http://203.67.19.84/KMDJ/REST/Blog.svc/31/count/month" )
	
	end
	
	

end
