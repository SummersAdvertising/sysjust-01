module WritingsHelper
    def self.class_path(classno, page)
    	page = 1 if page.nil?
    	"http://#{$api_domain}/KMDJ/REST/Blog.svc/#{$blog_id}/paging/class/#{classno}/20/#{page}"
    end
	
end