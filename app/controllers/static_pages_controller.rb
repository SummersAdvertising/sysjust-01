# -*- encoding : utf-8 -*-
class StaticPagesController < ApplicationController
		
	def show		
		respond_to do | format |
			format.html { render :template => 'static_pages/' + params[:id] }		
		end	
	end

  def announcement
    require 'open-uri'
    require 'json'


    get_record_to_data(20)

  end

  def purchasing
  end

  def download_contents
  end

  def download_detection
  	user_agent = request.env['HTTP_USER_AGENT']

  	case 
  	when user_agent =~ /iPod|iPhone/
  		download_url = "https://itunes.apple.com/us/app/xq-quan-qiu-ying-jia-shou-ji-ban/id775687957?mt=8&ign-mpt=uo%3D4"
	when user_agent =~ /iPad/
		download_url = "https://itunes.apple.com/us/app/xq-quan-qiu-ying-jia/id642738082?ls=1&mt=8"
	when user_agent =~ /Android/
		download_url = "https://play.google.com/store/apps/details?id=djapp.app.xqm"
	end
	#如果空值表示不支援的裝置，直接顯示頁面
	if download_url
  		redirect_to download_url 
  	else
  		render layout: false
  	end
  end

  def file_01
    send_file Rails.root.to_s()+"/public/download_contents/Foreign_Exchange.dap"
  end

  def file_02
    send_file Rails.root.to_s()+"/public/download_contents/Main_American_Stocks.dap"
  end

  def file_03
    send_file Rails.root.to_s()+"/public/download_contents/Comparison_with_CN_HK_TW.dap"
  end


  def traits
  end

  def questions
  end

  def online_demonstrations
  end

  def download_dms
  end

  def index
    @banners = Banner.limit(4)
    @banner_01 = @banners[0]
    @banner_02 = @banners[1]
    @banner_03 = @banners[2]
    @banner_04 = @banners[3]

    @newsupdates = NewsUpdate.limit(3)
    @newsupdate_01 = @newsupdates[0]
    @newsupdate_02 = @newsupdates[1]
    @newsupdate_03 = @newsupdates[2]
    @newsupdate_04 = @newsupdates[3]

    current_time = Time.now

    @courses = Course.display.start_time.recent
    @display_courses = []
    
    i = 0    
    
    until i >= @courses.length || i >= 3 do
    	@display_courses.push( @courses[i] ) if @courses[i].is_display
    	i=i+1
    end
    require 'open-uri'
    require 'json'
    
	get_record_to_data 4
	
  end
  
private
	def set_meta
	
		if params[ :action ] == "show"
			
			if params[ :id ].to_s.match(/^radar/)
				$meta_title = '	策略雷達'
			end
		
		end
	
	end

	def get_record_to_data(num)	
	    @data = []    
		return if num <= 0
		
	    begin
	    	original_data = open("http://www.xq.com.tw/daqsite/js/newsysnotice4.aspx?A=" + num.to_s).read
	    rescue
	    	#do nothing
	    else
		    encode_data = original_data.encode('UTF-8')
		    remove_oNoties = encode_data.gsub("var oNoties=", "")
		    remove_colon = remove_oNoties.gsub(";", "")
		    
		    parsed_data = eval(remove_colon)
		    
		    parsed_data.each do | row |
		    
		    	begin 
		    	
		    	 if row[0] == :array
		    	 	next
		    	 end
		    	 
				rescue
					next
				else
		    	 rowData = row[1]
		    	 @record = Array[rowData[:T1], rowData[:T2], rowData[:Title], replace_notice_content(rowData[:Detail])]

		    	 @data.push(@record)
				end
		    end
		    
=begin		    
		    remove_array = remove_colon.split(',array:')
		    remove_array= remove_array[0]
		    records = remove_array.split(',i')	    
		    		    
		    num.times { | i |
		    	begin 
				    record = records[i].split(':{')
				    record = record[1]
				    record = record.gsub("}", "")
				    record_split = record.split(',')
				    record_T1 = record_split[0]
				    record_T1 = record_T1.gsub("T1:", "")
				    record_T1 = record_T1.gsub("'", "")
				    record_T2 = record_split[1]
				    record_Title = record_split[2]
				    record_Title = record_Title.gsub("Title:", "")
				    record_Title = record_Title.gsub("'", "")
				    record_Detail = record_split[3]
				    record_Detail = record_Detail.gsub("Detail:", "")
				    record_Detail = record_Detail.gsub("'", "")
				    record_Detail = record_Detail.gsub("\n", "<br />")
				    @record = Array[record_T1, record_T2, record_Title, record_Detail]    
				    
				rescue
					next
				else
					@data.push(@record)
				end
		
		    }
		    
=end		    
		    
		end	
	end

	def replace_notice_content(content)
		content.gsub(/#Link([^\(]*)\(([^\(]*)\)/, '<a href="\2" target="blank">\1</a>')
	end
  
end
