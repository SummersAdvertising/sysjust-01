# -*- encoding : utf-8 -*-
class Admin::ExperiencesController < ApplicationController
  layout 'admin'
  before_filter :require_sign_in

  def remove
    delete_experiences = cookies[:delete_experiences]
    remove_experiences = delete_experiences.split(',')

    remove_experiences.each do |i|
      @experience = Experience.find(i)
      @experience.destroy
    end
    cookies.delete :delete_experiences
    redirect_to admin_experiences_path
  end

  # GET /experiences
  # GET /experiences.json
  def index
    @experiences = Experience.page(params[:page]).per(15)
    @service_email = ServiceEmail.first

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @experiences }
    end
  end

  # GET /experiences/1
  # GET /experiences/1.json
  def show
    @experience = Experience.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @experience }
    end
  end

  # GET /experiences/new
  # GET /experiences/new.json
  def new
    @experience = Experience.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @experience }
    end
  end

  # GET /experiences/1/edit
  def edit
    @experience = Experience.find(params[:id])
  end

  # POST /experiences
  # POST /experiences.json
  def create
    @experience = Experience.new(params[:experience])

    respond_to do |format|
      if @experience.save
        format.html { redirect_to admin_experiences_path, notice: 'Experience was successfully created.' }
        format.json { render json: @experience, status: :created, location: @experience }
      else
        format.html { render action: "new" }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /experiences/1
  # PUT /experiences/1.json
  def update
    @experience = Experience.find(params[:id])

    respond_to do |format|
      if @experience.update_attributes(params[:experience])
        format.html { redirect_to admin_experiences_path, notice: 'Experience was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experiences/1
  # DELETE /experiences/1.json
  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy

    respond_to do |format|
      format.html { redirect_to admin_experiences_path }
      format.json { head :no_content }
    end
  end
end
