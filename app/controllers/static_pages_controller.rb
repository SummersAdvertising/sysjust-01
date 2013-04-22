# -*- encoding : utf-8 -*-
class StaticPagesController < ApplicationController
  def announcement
    require 'open-uri'
    require 'json'

    original_data = open("http://www.xq.com.tw/daqSite/js/NewSysNotice4.aspx?A=20").read
    encode_data = original_data.encode('UTF-8')
    remove_oNoties = encode_data.gsub("var oNoties=", "")
    remove_colon = remove_oNoties.gsub(";", "")
    remove_array = remove_colon.split(',array:')
    remove_array= remove_array[0]
    records = remove_array.split(',i')

    get_record_to_data(20)

  end

  def purchasing
  end

  def download_contents
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
    
	    
	    get_record_to_data 20
  end
  
private
	def get_record_to_data(num)	
	    @data = []    
		return if num <= 0
		
	    begin
	    	original_data = open("http://203.67.19.12/daqSite/js/NewSysNotice4.aspx?A=20").read
	    rescue
	    	#do nothing
	    else
	        
		    encode_data = original_data.encode('UTF-8')
		    remove_oNoties = encode_data.gsub("var oNoties=", "")
		    remove_colon = remove_oNoties.gsub(";", "")
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
		    
		end	
	end
  
end
