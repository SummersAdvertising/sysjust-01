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
    current_hour = Time.now.hour
    current_minute = Time.now.min
    current_time = current_year * 365 * 24 * 60 + current_month * 30 * 24 * 60 + current_day * 24 * 60 + current_hour * 60 + current_minute

    @courses = Course.display.start_time.recent
    @display_courses = [@courses[0], @courses[1], @courses[2]]
    i = 0

    @courses.each do |course|
      month = course.start_time[0..1].to_i
      day = course.start_time[3..4].to_i
      year = course.start_time[6..9].to_i
      hour = course.start_time[11..12].to_i
      minute = course.start_time[14..15].to_i
      time = year * 365 * 24 * 60 + month * 30 * 24 * 60 + day * 24 * 60 + hour * 60 + minute
      if time > current_time
        @display_courses[i] = course
        i=i+1
      end
      if i >= 2
        break
      end
    end
  end
end
