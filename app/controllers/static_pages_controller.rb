class StaticPagesController < ApplicationController
  def purchasing
  end

  def download_contents
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
      month = Integer(date_split[0].gsub("0", ""))
      day = Integer(date_split[1].gsub("0", ""))
      year = Integer(date_split[2])
      temp_start_time = year * 365 + month * 30  + day
      if temp_start_time > current_time
        @display_courses[i] = course
        i=i+1
      end
      if i >= 2
        break
      end
    end
  end
end
