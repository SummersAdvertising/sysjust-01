module WritingsHelper
    def self.class_path(classno, page)
    	page = 1 if page.nil?
    	"http://203.67.19.84/KMDJ/REST/Blog.svc/31/paging/class/#{classno}/20/#{page}"
    end
	
end