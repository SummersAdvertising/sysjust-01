# -*- encoding : utf-8 -*-
class StaticPagesController < ApplicationController
  def announcement
    require 'open-uri'
    require 'json'

    original_data = open("http://203.67.19.12/daqSite/js/NewSysNotice4.aspx?A=20").read
    encode_data = original_data.encode('UTF-8')
    remove_oNoties = encode_data.gsub("var oNoties=", "")
    remove_colon = remove_oNoties.gsub(";", "")
    remove_array = remove_colon.split(',array:')
    remove_array= remove_array[0]
    records = remove_array.split(',i')

    records_00 = records[0].split(':{')
    records_00 = records_00[1]
    records_00 = records_00.gsub("}", "")
    records_00_split = records_00.split(',')
    records_00_T1 = records_00_split[0]
    records_00_T1 = records_00_T1.gsub("T1:", "")
    records_00_T1 = records_00_T1.gsub("'", "")
    records_00_T2 = records_00_split[1]
    records_00_Title = records_00_split[2]
    records_00_Title = records_00_Title.gsub("Title:", "")
    records_00_Title = records_00_Title.gsub("'", "")
    records_00_Detail = records_00_split[3]
    records_00_Detail = records_00_Detail.gsub("Detail:", "")
    records_00_Detail = records_00_Detail.gsub("'", "")
    records_00_Detail = records_00_Detail.gsub("\n", "<br />")
    @record_00 = Array[records_00_T1, records_00_T2, records_00_Title, records_00_Detail]

    records_01 = records[1].split(':{')
    records_01 = records_01[1]
    records_01 = records_01.gsub("}", "")
    records_01_split = records_01.split(',')
    records_01_T1 = records_01_split[0]
    records_01_T1 = records_01_T1.gsub("T1:", "")
    records_01_T1 = records_01_T1.gsub("'", "")
    records_01_T2 = records_01_split[1]
    records_01_Title = records_01_split[2]
    records_01_Title = records_01_Title.gsub("Title:", "")
    records_01_Title = records_01_Title.gsub("'", "")
    records_01_Detail = records_01_split[3]
    records_01_Detail = records_01_Detail.gsub("Detail:", "")
    records_01_Detail = records_01_Detail.gsub("'", "")
    records_01_Detail = records_01_Detail.gsub("\n", "<br />")
    @record_01 = Array[records_01_T1, records_01_T2, records_01_Title, records_01_Detail]

    records_02 = records[2].split(':{')
    records_02 = records_02[1]
    records_02 = records_02.gsub("}", "")
    records_02_split = records_02.split(',')
    records_02_T1 = records_02_split[0]
    records_02_T1 = records_02_T1.gsub("T1:", "")
    records_02_T1 = records_02_T1.gsub("'", "")
    records_02_T2 = records_02_split[1]
    records_02_Title = records_02_split[2]
    records_02_Title = records_02_Title.gsub("Title:", "")
    records_02_Title = records_02_Title.gsub("'", "")
    records_02_Detail = records_02_split[3]
    records_02_Detail = records_02_Detail.gsub("Detail:", "")
    records_02_Detail = records_02_Detail.gsub("'", "")
    records_02_Detail = records_02_Detail.gsub("\n", "<br />")
    @record_02 = Array[records_02_T1, records_02_T2, records_02_Title, records_02_Detail]

    records_03 = records[3].split(':{')
    records_03 = records_03[1]
    records_03 = records_03.gsub("}", "")
    records_03_split = records_03.split(',')
    records_03_T1 = records_03_split[0]
    records_03_T1 = records_03_T1.gsub("T1:", "")
    records_03_T1 = records_03_T1.gsub("'", "")
    records_03_T2 = records_03_split[1]
    records_03_Title = records_03_split[2]
    records_03_Title = records_03_Title.gsub("Title:", "")
    records_03_Title = records_03_Title.gsub("'", "")
    records_03_Detail = records_03_split[3]
    records_03_Detail = records_03_Detail.gsub("Detail:", "")
    records_03_Detail = records_03_Detail.gsub("'", "")
    records_03_Detail = records_03_Detail.gsub("\n", "<br />")
    @record_03 = Array[records_03_T1, records_03_T2, records_03_Title, records_03_Detail]

    records_04 = records[4].split(':{')
    records_04 = records_04[1]
    records_04 = records_04.gsub("}", "")
    records_04_split = records_04.split(',')
    records_04_T1 = records_04_split[0]
    records_04_T1 = records_04_T1.gsub("T1:", "")
    records_04_T1 = records_04_T1.gsub("'", "")
    records_04_T2 = records_04_split[1]
    records_04_Title = records_04_split[2]
    records_04_Title = records_04_Title.gsub("Title:", "")
    records_04_Title = records_04_Title.gsub("'", "")
    records_04_Detail = records_04_split[3]
    records_04_Detail = records_04_Detail.gsub("Detail:", "")
    records_04_Detail = records_04_Detail.gsub("'", "")
    records_04_Detail = records_04_Detail.gsub("\n", "<br />")
    @record_04 = Array[records_04_T1, records_04_T2, records_04_Title, records_04_Detail]

    records_05 = records[5].split(':{')
    records_05 = records_05[1]
    records_05 = records_05.gsub("}", "")
    records_05_split = records_05.split(',')
    records_05_T1 = records_05_split[0]
    records_05_T1 = records_05_T1.gsub("T1:", "")
    records_05_T1 = records_05_T1.gsub("'", "")
    records_05_T2 = records_05_split[1]
    records_05_Title = records_05_split[2]
    records_05_Title = records_05_Title.gsub("Title:", "")
    records_05_Title = records_05_Title.gsub("'", "")
    records_05_Detail = records_05_split[3]
    records_05_Detail = records_05_Detail.gsub("Detail:", "")
    records_05_Detail = records_05_Detail.gsub("'", "")
    records_05_Detail = records_05_Detail.gsub("\n", "<br />")
    @record_05 = Array[records_05_T1, records_05_T2, records_05_Title, records_05_Detail]

    records_06 = records[6].split(':{')
    records_06 = records_06[1]
    records_06 = records_06.gsub("}", "")
    records_06_split = records_06.split(',')
    records_06_T1 = records_06_split[0]
    records_06_T1 = records_06_T1.gsub("T1:", "")
    records_06_T1 = records_06_T1.gsub("'", "")
    records_06_T2 = records_06_split[1]
    records_06_Title = records_06_split[2]
    records_06_Title = records_06_Title.gsub("Title:", "")
    records_06_Title = records_06_Title.gsub("'", "")
    records_06_Detail = records_06_split[3]
    records_06_Detail = records_06_Detail.gsub("Detail:", "")
    records_06_Detail = records_06_Detail.gsub("'", "")
    records_06_Detail = records_06_Detail.gsub("\n", "<br />")
    @record_06 = Array[records_06_T1, records_06_T2, records_06_Title, records_06_Detail]

    records_07 = records[7].split(':{')
    records_07 = records_07[1]
    records_07 = records_07.gsub("}", "")
    records_07_split = records_07.split(',')
    records_07_T1 = records_07_split[0]
    records_07_T1 = records_07_T1.gsub("T1:", "")
    records_07_T1 = records_07_T1.gsub("'", "")
    records_07_T2 = records_07_split[1]
    records_07_Title = records_07_split[2]
    records_07_Title = records_07_Title.gsub("Title:", "")
    records_07_Title = records_07_Title.gsub("'", "")
    records_07_Detail = records_07_split[3]
    records_07_Detail = records_07_Detail.gsub("Detail:", "")
    records_07_Detail = records_07_Detail.gsub("'", "")
    records_07_Detail = records_07_Detail.gsub("\n", "<br />")
    @record_07 = Array[records_07_T1, records_07_T2, records_07_Title, records_07_Detail]

    records_08 = records[8].split(':{')
    records_08 = records_08[1]
    records_08 = records_08.gsub("}", "")
    records_08_split = records_08.split(',')
    records_08_T1 = records_08_split[0]
    records_08_T1 = records_08_T1.gsub("T1:", "")
    records_08_T1 = records_08_T1.gsub("'", "")
    records_08_T2 = records_08_split[1]
    records_08_Title = records_08_split[2]
    records_08_Title = records_08_Title.gsub("Title:", "")
    records_08_Title = records_08_Title.gsub("'", "")
    records_08_Detail = records_08_split[3]
    records_08_Detail = records_08_Detail.gsub("Detail:", "")
    records_08_Detail = records_08_Detail.gsub("'", "")
    records_08_Detail = records_08_Detail.gsub("\n", "<br />")
    @record_08 = Array[records_08_T1, records_08_T2, records_08_Title, records_08_Detail]

    records_09 = records[9].split(':{')
    records_09 = records_09[1]
    records_09 = records_09.gsub("}", "")
    records_09_split = records_09.split(',')
    records_09_T1 = records_09_split[0]
    records_09_T1 = records_09_T1.gsub("T1:", "")
    records_09_T1 = records_09_T1.gsub("'", "")
    records_09_T2 = records_09_split[1]
    records_09_Title = records_09_split[2]
    records_09_Title = records_09_Title.gsub("Title:", "")
    records_09_Title = records_09_Title.gsub("'", "")
    records_09_Detail = records_09_split[3]
    records_09_Detail = records_09_Detail.gsub("Detail:", "")
    records_09_Detail = records_09_Detail.gsub("'", "")
    records_09_Detail = records_09_Detail.gsub("\n", "<br />")
    @record_09 = Array[records_09_T1, records_09_T2, records_09_Title, records_09_Detail]

    records_010 = records[10].split(':{')
    records_010 = records_010[1]
    records_010 = records_010.gsub("}", "")
    records_010_split = records_010.split(',')
    records_010_T1 = records_010_split[0]
    records_010_T1 = records_010_T1.gsub("T1:", "")
    records_010_T1 = records_010_T1.gsub("'", "")
    records_010_T2 = records_010_split[1]
    records_010_Title = records_010_split[2]
    records_010_Title = records_010_Title.gsub("Title:", "")
    records_010_Title = records_010_Title.gsub("'", "")
    records_010_Detail = records_010_split[3]
    records_010_Detail = records_010_Detail.gsub("Detail:", "")
    records_010_Detail = records_010_Detail.gsub("'", "")
    records_010_Detail = records_010_Detail.gsub("\n", "<br />")
    @record_010 = Array[records_010_T1, records_010_T2, records_010_Title, records_010_Detail]

    records_011 = records[11].split(':{')
    records_011 = records_011[1]
    records_011 = records_011.gsub("}", "")
    records_011_split = records_011.split(',')
    records_011_T1 = records_011_split[0]
    records_011_T1 = records_011_T1.gsub("T1:", "")
    records_011_T1 = records_011_T1.gsub("'", "")
    records_011_T2 = records_011_split[1]
    records_011_Title = records_011_split[2]
    records_011_Title = records_011_Title.gsub("Title:", "")
    records_011_Title = records_011_Title.gsub("'", "")
    records_011_Detail = records_011_split[3]
    records_011_Detail = records_011_Detail.gsub("Detail:", "")
    records_011_Detail = records_011_Detail.gsub("'", "")
    records_011_Detail = records_011_Detail.gsub("\n", "<br />")
    @record_011 = Array[records_011_T1, records_011_T2, records_011_Title, records_011_Detail]

    records_012 = records[12].split(':{')
    records_012 = records_012[1]
    records_012 = records_012.gsub("}", "")
    records_012_split = records_012.split(',')
    records_012_T1 = records_012_split[0]
    records_012_T1 = records_012_T1.gsub("T1:", "")
    records_012_T1 = records_012_T1.gsub("'", "")
    records_012_T2 = records_012_split[1]
    records_012_Title = records_012_split[2]
    records_012_Title = records_012_Title.gsub("Title:", "")
    records_012_Title = records_012_Title.gsub("'", "")
    records_012_Detail = records_012_split[3]
    records_012_Detail = records_012_Detail.gsub("Detail:", "")
    records_012_Detail = records_012_Detail.gsub("'", "")
    records_012_Detail = records_012_Detail.gsub("\n", "<br />")
    @record_012 = Array[records_012_T1, records_012_T2, records_012_Title, records_012_Detail]

    records_013 = records[13].split(':{')
    records_013 = records_013[1]
    records_013 = records_013.gsub("}", "")
    records_013_split = records_013.split(',')
    records_013_T1 = records_013_split[0]
    records_013_T1 = records_013_T1.gsub("T1:", "")
    records_013_T1 = records_013_T1.gsub("'", "")
    records_013_T2 = records_013_split[1]
    records_013_Title = records_013_split[2]
    records_013_Title = records_013_Title.gsub("Title:", "")
    records_013_Title = records_013_Title.gsub("'", "")
    records_013_Detail = records_013_split[3]
    records_013_Detail = records_013_Detail.gsub("Detail:", "")
    records_013_Detail = records_013_Detail.gsub("'", "")
    records_013_Detail = records_013_Detail.gsub("\n", "<br />")
    @record_013 = Array[records_013_T1, records_013_T2, records_013_Title, records_013_Detail]

    records_014 = records[14].split(':{')
    records_014 = records_014[1]
    records_014 = records_014.gsub("}", "")
    records_014_split = records_014.split(',')
    records_014_T1 = records_014_split[0]
    records_014_T1 = records_014_T1.gsub("T1:", "")
    records_014_T1 = records_014_T1.gsub("'", "")
    records_014_T2 = records_014_split[1]
    records_014_Title = records_014_split[2]
    records_014_Title = records_014_Title.gsub("Title:", "")
    records_014_Title = records_014_Title.gsub("'", "")
    records_014_Detail = records_014_split[3]
    records_014_Detail = records_014_Detail.gsub("Detail:", "")
    records_014_Detail = records_014_Detail.gsub("'", "")
    records_014_Detail = records_014_Detail.gsub("\n", "<br />")
    @record_014 = Array[records_014_T1, records_014_T2, records_014_Title, records_014_Detail]

    records_015 = records[15].split(':{')
    records_015 = records_015[1]
    records_015 = records_015.gsub("}", "")
    records_015_split = records_015.split(',')
    records_015_T1 = records_015_split[0]
    records_015_T1 = records_015_T1.gsub("T1:", "")
    records_015_T1 = records_015_T1.gsub("'", "")
    records_015_T2 = records_015_split[1]
    records_015_Title = records_015_split[2]
    records_015_Title = records_015_Title.gsub("Title:", "")
    records_015_Title = records_015_Title.gsub("'", "")
    records_015_Detail = records_015_split[3]
    records_015_Detail = records_015_Detail.gsub("Detail:", "")
    records_015_Detail = records_015_Detail.gsub("'", "")
    records_015_Detail = records_015_Detail.gsub("\n", "<br />")
    @record_015 = Array[records_015_T1, records_015_T2, records_015_Title, records_015_Detail]

    records_016 = records[16].split(':{')
    records_016 = records_016[1]
    records_016 = records_016.gsub("}", "")
    records_016_split = records_016.split(',')
    records_016_T1 = records_016_split[0]
    records_016_T1 = records_016_T1.gsub("T1:", "")
    records_016_T1 = records_016_T1.gsub("'", "")
    records_016_T2 = records_016_split[1]
    records_016_Title = records_016_split[2]
    records_016_Title = records_016_Title.gsub("Title:", "")
    records_016_Title = records_016_Title.gsub("'", "")
    records_016_Detail = records_016_split[3]
    records_016_Detail = records_016_Detail.gsub("Detail:", "")
    records_016_Detail = records_016_Detail.gsub("'", "")
    records_016_Detail = records_016_Detail.gsub("\n", "<br />")
    @record_016 = Array[records_016_T1, records_016_T2, records_016_Title, records_016_Detail]

    records_017 = records[17].split(':{')
    records_017 = records_017[1]
    records_017 = records_017.gsub("}", "")
    records_017_split = records_017.split(',')
    records_017_T1 = records_017_split[0]
    records_017_T1 = records_017_T1.gsub("T1:", "")
    records_017_T1 = records_017_T1.gsub("'", "")
    records_017_T2 = records_017_split[1]
    records_017_Title = records_017_split[2]
    records_017_Title = records_017_Title.gsub("Title:", "")
    records_017_Title = records_017_Title.gsub("'", "")
    records_017_Detail = records_017_split[3]
    records_017_Detail = records_017_Detail.gsub("Detail:", "")
    records_017_Detail = records_017_Detail.gsub("'", "")
    records_017_Detail = records_017_Detail.gsub("\n", "<br />")
    @record_017 = Array[records_017_T1, records_017_T2, records_017_Title, records_017_Detail]

    records_018 = records[18].split(':{')
    records_018 = records_018[1]
    records_018 = records_018.gsub("}", "")
    records_018_split = records_018.split(',')
    records_018_T1 = records_018_split[0]
    records_018_T1 = records_018_T1.gsub("T1:", "")
    records_018_T1 = records_018_T1.gsub("'", "")
    records_018_T2 = records_018_split[1]
    records_018_Title = records_018_split[2]
    records_018_Title = records_018_Title.gsub("Title:", "")
    records_018_Title = records_018_Title.gsub("'", "")
    records_018_Detail = records_018_split[3]
    records_018_Detail = records_018_Detail.gsub("Detail:", "")
    records_018_Detail = records_018_Detail.gsub("'", "")
    records_018_Detail = records_018_Detail.gsub("\n", "<br />")
    @record_018 = Array[records_018_T1, records_018_T2, records_018_Title, records_018_Detail]

    records_019 = records[19].split(':{')
    records_019 = records_019[1]
    records_019 = records_019.gsub("}", "")
    records_019_split = records_019.split(',')
    records_019_T1 = records_019_split[0]
    records_019_T1 = records_019_T1.gsub("T1:", "")
    records_019_T1 = records_019_T1.gsub("'", "")
    records_019_T2 = records_019_split[1]
    records_019_Title = records_019_split[2]
    records_019_Title = records_019_Title.gsub("Title:", "")
    records_019_Title = records_019_Title.gsub("'", "")
    records_019_Detail = records_019_split[3]
    records_019_Detail = records_019_Detail.gsub("Detail:", "")
    records_019_Detail = records_019_Detail.gsub("'", "")
    records_019_Detail = records_019_Detail.gsub("\n", "<br />")
    @record_019 = Array[records_019_T1, records_019_T2, records_019_Title, records_019_Detail]

    @data = Array[@record_00,@record_01,@record_02,@record_03,@record_04,@record_05,@record_06,@record_07,@record_08,@record_09,@record_010,@record_011,@record_012,@record_013,@record_014,@record_015,@record_016,@record_017,@record_018,@record_019]
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

    current_month = Time.now.month
    current_day = Time.now.day
    current_year = Time.now.year
    current_time = current_year * 365 + current_month * 30 + current_day

    @courses = Course.display.start_time.recent
    @display_courses = [@courses[0], @courses[1], @courses[2]]
    i = 0

    @courses.each do |course|
      date_time = course.start_time.split(' ')
      date = date_time[0]
      date_split = date.split('/')
      month = date_split[0].to_i()
      day = date_split[1].to_i()
      year = date_split[2].to_i()
      temp_start_time = year * 365 + month * 30 + day
      if temp_start_time > current_time
        @display_courses[i] = course
        i=i+1
      end
      if i >= 2
        break
      end
    end

    require 'open-uri'
    require 'json'

    original_data = open("http://203.67.19.12/daqSite/js/NewSysNotice4.aspx?A=20").read
    encode_data = original_data.encode('UTF-8')
    remove_oNoties = encode_data.gsub("var oNoties=", "")
    remove_colon = remove_oNoties.gsub(";", "")
    remove_array = remove_colon.split(',array:')
    remove_array= remove_array[0]
    records = remove_array.split(',i')

    records_00 = records[0].split(':{')
    records_00 = records_00[1]
    records_00 = records_00.gsub("}", "")
    records_00_split = records_00.split(',')
    records_00_T1 = records_00_split[0]
    records_00_T1 = records_00_T1.gsub("T1:", "")
    records_00_T1 = records_00_T1.gsub("'", "")
    records_00_T2 = records_00_split[1]
    records_00_Title = records_00_split[2]
    records_00_Title = records_00_Title.gsub("Title:", "")
    records_00_Title = records_00_Title.gsub("'", "")
    records_00_Detail = records_00_split[3]
    records_00_Detail = records_00_Detail.gsub("Detail:", "")
    records_00_Detail = records_00_Detail.gsub("'", "")
    records_00_Detail = records_00_Detail.gsub("\n", "<br />")
    @record_00 = Array[records_00_T1, records_00_T2, records_00_Title, records_00_Detail]

    records_01 = records[1].split(':{')
    records_01 = records_01[1]
    records_01 = records_01.gsub("}", "")
    records_01_split = records_01.split(',')
    records_01_T1 = records_01_split[0]
    records_01_T1 = records_01_T1.gsub("T1:", "")
    records_01_T1 = records_01_T1.gsub("'", "")
    records_01_T2 = records_01_split[1]
    records_01_Title = records_01_split[2]
    records_01_Title = records_01_Title.gsub("Title:", "")
    records_01_Title = records_01_Title.gsub("'", "")
    records_01_Detail = records_01_split[3]
    records_01_Detail = records_01_Detail.gsub("Detail:", "")
    records_01_Detail = records_01_Detail.gsub("'", "")
    records_01_Detail = records_01_Detail.gsub("\n", "<br />")
    @record_01 = Array[records_01_T1, records_01_T2, records_01_Title, records_01_Detail]

    records_02 = records[2].split(':{')
    records_02 = records_02[1]
    records_02 = records_02.gsub("}", "")
    records_02_split = records_02.split(',')
    records_02_T1 = records_02_split[0]
    records_02_T1 = records_02_T1.gsub("T1:", "")
    records_02_T1 = records_02_T1.gsub("'", "")
    records_02_T2 = records_02_split[1]
    records_02_Title = records_02_split[2]
    records_02_Title = records_02_Title.gsub("Title:", "")
    records_02_Title = records_02_Title.gsub("'", "")
    records_02_Detail = records_02_split[3]
    records_02_Detail = records_02_Detail.gsub("Detail:", "")
    records_02_Detail = records_02_Detail.gsub("'", "")
    records_02_Detail = records_02_Detail.gsub("\n", "<br />")
    @record_02 = Array[records_02_T1, records_02_T2, records_02_Title, records_02_Detail]

    records_03 = records[3].split(':{')
    records_03 = records_03[1]
    records_03 = records_03.gsub("}", "")
    records_03_split = records_03.split(',')
    records_03_T1 = records_03_split[0]
    records_03_T1 = records_03_T1.gsub("T1:", "")
    records_03_T1 = records_03_T1.gsub("'", "")
    records_03_T2 = records_03_split[1]
    records_03_Title = records_03_split[2]
    records_03_Title = records_03_Title.gsub("Title:", "")
    records_03_Title = records_03_Title.gsub("'", "")
    records_03_Detail = records_03_split[3]
    records_03_Detail = records_03_Detail.gsub("Detail:", "")
    records_03_Detail = records_03_Detail.gsub("'", "")
    records_03_Detail = records_03_Detail.gsub("\n", "<br />")
    @record_03 = Array[records_03_T1, records_03_T2, records_03_Title, records_03_Detail]
  end
end
