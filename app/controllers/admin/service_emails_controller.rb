class Admin::ServiceEmailsController < ApplicationController
  layout 'admin'
  before_filter :require_sign_in  
  # GET /service_emails
  # GET /service_emails.json
  def index
    @service_emails = ServiceEmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @service_emails }
    end
  end

  # GET /service_emails/1
  # GET /service_emails/1.json
  def show
    @service_email = ServiceEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @service_email }
    end
  end

  # GET /service_emails/new
  # GET /service_emails/new.json
  def new
    @service_email = ServiceEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @service_email }
    end
  end

  # GET /service_emails/1/edit
  def edit
    @service_email = ServiceEmail.find(params[:id])
  end

  # POST /service_emails
  # POST /service_emails.json
  def create
    @service_email = ServiceEmail.new(params[:service_email])

    respond_to do |format|
      if @service_email.save
        format.html { redirect_to @service_email, notice: 'Service email was successfully created.' }
        format.json { render json: @service_email, status: :created, location: @service_email }
      else
        format.html { render action: "new" }
        format.json { render json: @service_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /service_emails/1
  # PUT /service_emails/1.json
  def update
    @service_email = ServiceEmail.first

    respond_to do |format|
      if @service_email.update_attributes(params[:service_email])
        format.html { redirect_to admin_experiences_path, notice: 'Service email was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @service_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_emails/1
  # DELETE /service_emails/1.json
  def destroy
    @service_email = ServiceEmail.find(params[:id])
    @service_email.destroy

    respond_to do |format|
      format.html { redirect_to service_emails_url }
      format.json { head :no_content }
    end
  end
end
