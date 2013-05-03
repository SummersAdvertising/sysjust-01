#encoding: utf-8
class PostsController < ApplicationController
	

	def index
	
		respond_to do | format |
			
			begin				
				params[ :page ] = 1 if params[ :page ].nil?
				
				url = PostsHelper.remote_posts_path( params[ :page ] )
				
				@post_info = check_and_parse_str(url)
				
				@posts = @post_info["topics"]["topics_subject"]
			rescue
				format.html { redirect_to page_path( :id => "sorry" ) }
			end
			
			format.html
			
		end
	
	
	end

private
	def set_meta
		$meta_title = '討論區'
	end

end
