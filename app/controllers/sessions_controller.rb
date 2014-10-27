class SessionsController < ApplicationController

	# New session created on Login (i.e. user is found)
	def create
		@user = User.find_by :email => params[:email]

		if @user.nil?
		    flash[:error] = "No such user."
		    # redirect_to users_path
		elsif @user.authenticate params[:password]
		    session[:current_user_id] = @user.id
		    flash[:notice] = "Thank you for logging in, #{@user.email}."
		else
		    flash[:error] = "Incorrect password."
		    # redirect_to users_path
		end
		redirect_to user_path(:id)
	end


	def destroy
		session[:current_user_id] = nil
		flash[:notice] = "You have been logged out."

		redirect_to root_path
	end


end
