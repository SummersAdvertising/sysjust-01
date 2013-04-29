module PostsHelper
    def self.remote_posts_path(page)
    	page = 1 if page.nil?
    	"http://203.67.19.84/forum/services/restserver.aspx?method=topics.GetForumTopic&fid=7&size=20&format=json&page=#{page}"
    end
	
end
