class WritingsController < ApplicationController

	before_filter :setup_sidebar

	def index
		respond_to do | format |
			begin
				@writings = check_and_parse_str("http://203.67.19.84/KMDJ/REST/Blog.svc/31/last/5")
				format.html
			rescue
				format.html { redirect_to root_url }
			end			
		end
	   
	end
	
	def show
	
		@id = params[ :id ]
		
		respond_to do | format |
			begin
				@writing = check_and_parse_str( "http://203.67.19.84/KMDJ/REST/Blog.svc/31/article/#{@id}" )		
				@category_writings = check_and_parse_str("http://203.67.19.84/KMDJ/REST/Blog.svc/31/list/class/#{@writing["classno"]}/5")
			rescue
				format.html { redirect_to root_url }
			end
			
			format.html 
		end
	end
	
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
		
		begin
			@categories  = check_and_parse_str( "http://203.67.19.84/KMDJ/REST/Blog.svc/31/class" )
			@summery = check_and_parse_str( "http://203.67.19.84/KMDJ/REST/Blog.svc/31/count/month" )
		rescue
		
		end
	
	end
	
	

end
