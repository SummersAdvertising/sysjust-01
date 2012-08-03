# -*- encoding : utf-8 -*-
class UsersController < ApplicationController
	before_filter :require_is_admin
	layout 'admin'

	def index
		@users = User.all	
		@user=User.new	
	end

	def new
		@user=User.new
	end

	def create  
		@users = User.all
		@user = User.new(params[:user])
		if @user.save
		  # sign_in @user
		  # flash[:success] = "Welcome to the Sample App!"
		  redirect_to users_path
		else
		  render 'index'
		end
	end

	def destroy
	    @user = User.find(params[:id])	    
	    @user.destroy

	    respond_to do |format|
	      format.html { redirect_to users_url }
	      format.json { head :no_content }
	    end
    end
end
