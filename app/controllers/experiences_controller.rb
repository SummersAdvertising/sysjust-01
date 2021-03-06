# -*- encoding : utf-8 -*-
class ExperiencesController < ApplicationController
  # GET /experiences
  # GET /experiences.json
  #def index
  #  @experiences = Experience.all
  #
  #  respond_to do |format|
  #    format.html # index.html.erb
  #    format.json { render json: @experiences }
  #  end
  #end

  # GET /experiences/1
  # GET /experiences/1.json
  #def show
  #  @experience = Experience.find(params[:id])
  #
  #  respond_to do |format|
  #    format.html # show.html.erb
  #    format.json { render json: @experience }
  #  end
  #end

  # GET /experiences/new
  # GET /experiences/new.json
  def new
    @experience = Experience.new
    @finished = params[ :finished ]

    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @experience }
    end
  end

  # GET /experiences/1/edit
  #def edit
  #  @experience = Experience.find(params[:id])
  #end

  # POST /experiences
  # POST /experiences.json
  def create
    @experience = Experience.new(params[:experience])
    #@experience.service_email = ServiceEmail.first.email.to_s() if ServiceEmail.first
    respond_to do |format|
      if @experience.save
        ExperienceMailer.notify_email(@experience).deliver if ServiceEmail.first
        format.html { redirect_to :action => 'new', :finished => true }
        format.json { render json: @experience, status: :created, location: @experience }
      else
        format.html { render action: "new" }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
      #cookies[:thanks] = { :value => "true", :expires => 1.seconds.from_now }
      format.js
    end
  end

  # PUT /experiences/1
  # PUT /experiences/1.json
  #def update
  #  @experience = Experience.find(params[:id])
  #
  #  respond_to do |format|
  #    if @experience.update_attributes(params[:experience])
  #      format.html { redirect_to @experience, notice: 'Experience was successfully updated.' }
  #      format.json { head :no_content }
  #    else
  #      format.html { render action: "edit" }
  #      format.json { render json: @experience.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  # DELETE /experiences/1
  # DELETE /experiences/1.json
  #def destroy
  #  @experience = Experience.find(params[:id])
  #  @experience.destroy
  #
  #  respond_to do |format|
  #    format.html { redirect_to experiences_url }
  #    format.json { head :no_content }
  #  end
  #end
end
