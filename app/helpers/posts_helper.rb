module PostsHelper
    def self.remote_posts_path(page)
    	page = 1 if page.nil?
    	"http://#{$api_domain}/forum/services/restserver.aspx?method=topics.GetForumTopic&fid=#{$f_id}&size=20&format=json&page=#{page}"
    end
	
end
