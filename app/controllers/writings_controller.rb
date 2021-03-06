# encoding: utf-8
class WritingsController < ApplicationController

	before_filter :setup_sidebar

	def index
		respond_to do | format |
			begin
				@writings = check_and_parse_str("http://#{$api_domain}/KMDJ/REST/Blog.svc/#{$blog_id}/last/5")
				format.html
			rescue
				format.html { redirect_to page_path( :id => "sorry" ) }
			end			
		end
	   
	end
	
	def show
	
		@id = params[ :id ]
		
		respond_to do | format |
			begin
				@writing = check_and_parse_str( "http://#{$api_domain}/KMDJ/REST/Blog.svc/#{$blog_id}/article/#{@id}" )		
				@category_writings = check_and_parse_str("http://#{$api_domain}/KMDJ/REST/Blog.svc/#{$blog_id}/list/class/#{@writing["classno"]}/5")
			rescue
				format.html { redirect_to page_path( :id => "sorry" ) }
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
	
		$meta_title = "專家分享"
		
		begin
			@categories  = check_and_parse_str( "http://#{$api_domain}/KMDJ/REST/Blog.svc/#{$blog_id}/class" )
			@summery = check_and_parse_str( "http://#{$api_domain}/KMDJ/REST/Blog.svc/#{$blog_id}/count/month" )
		rescue
		
		end
	
	end
	
	

end
