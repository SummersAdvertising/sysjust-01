class Admin::VersionLogsController < ApplicationController
  layout 'admin'
  before_filter :require_sign_in  

  def index
    @version_logs = VersionLog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @version_logs }
    end
  end

  def new
  	@version_log = VersionLog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @version_log }
    end
  end

  def create
    @version_log = VersionLog.new(params[:version_log])

    respond_to do |format|
      if @version_log.save
        format.html { redirect_to admin_version_logs_url, notice: 'Version Log was successfully created.' }
        format.json { render json: @version_log, status: :created, location: @version_log }
      else
        format.html { render action: "new" }
        format.json { render json: @version_log.errors, status: :unprocessable_entity }
      end
    end

  end

  def show
    @version_log = VersionLog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @version_log }
    end
  end

  def edit
  	@version_log = VersionLog.find(params[:id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @version_log }
    end
  end

  def update
    @version_log = VersionLog.find(params[:id])

    respond_to do |format|
      if @version_log.update_attributes(params[:version_log])
        format.html { redirect_to admin_version_logs_url, notice: 'Version Log was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @version_log.errors, status: :unprocessable_entity }
      end
    end
  end

   def destroy
    @version_log = VersionLog.find(params[:id])
    @version_log.destroy

    respond_to do |format|
      format.html { redirect_to admin_version_logs_url }
      format.json { head :no_content }
    end
  end
end
