# -*- encoding : utf-8 -*-
class Admin::BannersController < ApplicationController
  layout 'admin'
  before_filter :require_sign_in  

  # GET /banners
  # GET /banners.json
  def index
    @banners = Banner.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @banners }
    end
  end

  # GET /banners/1
  # GET /banners/1.json
  def show
    @banner = Banner.find(params[:id])
    @banners = Banner.limit(4)
    @banner_01 = @banners[0]
    @banner_02 = @banners[1]
    @banner_03 = @banners[2]
    @banner_04 = @banners[3]

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @banner }
    end
  end

  # GET /banners/new
  # GET /banners/new.json
  def new
    @banner = Banner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @banner }
    end
  end

  # GET /banners/1/edit
  def edit
    @banner = Banner.find(params[:id])
    @banners = Banner.limit(4)
    @banner_01 = @banners[0]
    @banner_02 = @banners[1]
    @banner_03 = @banners[2]
    @banner_04 = @banners[3]
  end

  # POST /banners
  # POST /banners.json
  def create
    @banner = Banner.new(params[:banner])

    respond_to do |format|
      if @banner.save
        format.html { redirect_to admin_banner_path(@banner), notice: 'Banner was successfully created.' }
        format.json { render json: @banner, status: :created, location: @banner }
      else
        format.html { render action: "new" }
        format.json { render json: @banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /banners/1
  # PUT /banners/1.json
  def update
    @banner = Banner.find(params[:id])

    respond_to do |format|
      if @banner.update_attributes(params[:banner])
        format.html { redirect_to admin_banner_path(@banner), notice: 'Banner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { redirect_to edit_admin_banner_path(@banner), notice: @banner.errors.full_messages }
        format.json { render json: @banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banners/1
  # DELETE /banners/1.json
  def destroy
    @banner = Banner.find(params[:id])
    @banner.destroy

    respond_to do |format|
      format.html { redirect_to admin_banners_url }
      format.json { head :no_content }
    end
  end
end
