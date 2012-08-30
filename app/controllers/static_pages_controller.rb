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
  end
end
