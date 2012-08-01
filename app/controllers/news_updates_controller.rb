class NewsUpdatesController < ApplicationController
  # GET /news_updates
  # GET /news_updates.json
  def index
    @news_updates = NewsUpdate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @news_updates }
    end
  end

  # GET /news_updates/1
  # GET /news_updates/1.json
  def show
    @news_update = NewsUpdate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @news_update }
    end
  end

  # GET /news_updates/new
  # GET /news_updates/new.json
  def new
    @news_update = NewsUpdate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @news_update }
    end
  end

  # GET /news_updates/1/edit
  def edit
    @news_update = NewsUpdate.find(params[:id])
  end

  # POST /news_updates
  # POST /news_updates.json
  def create
    @news_update = NewsUpdate.new(params[:news_update])

    respond_to do |format|
      if @news_update.save
        format.html { redirect_to @news_update, notice: 'News update was successfully created.' }
        format.json { render json: @news_update, status: :created, location: @news_update }
      else
        format.html { render action: "new" }
        format.json { render json: @news_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /news_updates/1
  # PUT /news_updates/1.json
  def update
    @news_update = NewsUpdate.find(params[:id])

    respond_to do |format|
      if @news_update.update_attributes(params[:news_update])
        format.html { redirect_to @news_update, notice: 'News update was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @news_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_updates/1
  # DELETE /news_updates/1.json
  def destroy
    @news_update = NewsUpdate.find(params[:id])
    @news_update.destroy

    respond_to do |format|
      format.html { redirect_to news_updates_url }
      format.json { head :no_content }
    end
  end
end
