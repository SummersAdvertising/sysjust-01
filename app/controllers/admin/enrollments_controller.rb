class Admin::EnrollmentsController < ApplicationController
  layout 'admin'
  before_filter :require_sign_in  
  # GET /enrollments
  # GET /enrollments.json
  def index    
    @course = Course.find(params[:course_id])
    @enrollments = @course.enrollments.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enrollments }      
    end
  end

  # GET /enrollments/1
  # GET /enrollments/1.json
  def show
    @enrollment = Enrollment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enrollment }
    end
  end

  # GET /enrollments/new
  # GET /enrollments/new.json
  def new
    @enrollment = Enrollment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enrollment }
    end
  end

  # GET /enrollments/1/edit
  def edit
    @enrollment = Enrollment.find(params[:id])
  end

  # POST /enrollments
  # POST /enrollments.json
  def create
    @course = Course.find(params[:course_id])
    @enrollment = @course.enrollments.create(params[:enrollment])

    respond_to do |format|
      if @enrollment.save
        format.html { redirect_to admin_course_path(@course), notice: 'Enrollment was successfully created.' }
        format.json { render json: @enrollment, status: :created, location: @enrollment }
      else
        format.html { redirect_to admin_course_path(@course), notice: @enrollment.errors.full_messages }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enrollments/1
  # PUT /enrollments/1.json
  def update
    @enrollment = Enrollment.find(params[:id])

    respond_to do |format|
      if @enrollment.update_attributes(params[:enrollment])
        format.html { redirect_to @enrollment, notice: 'Enrollment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrollments/1
  # DELETE /enrollments/1.json
  def destroy
    @course = Course.find(params[:course_id])
    @enrollment = Enrollment.find(params[:id])
    @enrollment.destroy

    respond_to do |format|
      format.html { redirect_to admin_course_path(@course) }
      format.json { head :no_content }
    end
  end
end
