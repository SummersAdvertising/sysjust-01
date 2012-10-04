# -*- encoding : utf-8 -*-
class VideosController < ApplicationController
  def download
    @category = Category.find(params[:category_id])
    @video = @category.videos.find(params[:id])
    send_file Rails.root.to_s()+"/public"+@video.video_url
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    # @video = Video.find(params[:id])
   @category = Category.find(params[:category_id])
   @video = @category.videos.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @video }
    end
  end

end
