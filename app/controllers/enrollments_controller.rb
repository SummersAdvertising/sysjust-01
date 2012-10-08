# -*- encoding : utf-8 -*-
class EnrollmentsController < ApplicationController
  before_filter :require_sign_in, only: :index
  # GET /enrollments
  # GET /enrollments.json
  def index
    @course = Course.find(params[:course_id])
    @enrollments = @course.enrollments.all

    respond_to do |format|
      format.xls
      format.html # index.html.erb
      format.json { render json: @enrollments }
    end
  end

  # GET /enrollments/new
  # GET /enrollments/new.json
  def new
    @course = Course.find(params[:course_id])
    @enrollment = Enrollment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enrollment }
    end
  end

  # POST /enrollments
  # POST /enrollments.json
  def create
    @course = Course.find(params[:course_id])
    @enrollment = @course.enrollments.create(params[:enrollment])

    respond_to do |format|
      if @enrollment.save
        format.html { render :template => 'enrollments/success', notice: 'ya' }
        format.json { render json: @enrollment, status: :created, location: @enrollment }
      else
        format.html { render action: "new" }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

end
