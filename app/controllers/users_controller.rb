class UsersController < ApplicationController


	def index
		@user = User.new
		if current_user
			redirect_to user_path(:id)
		end

	end

	# New user created on Register
	def create
		@user = User.new user_params

		if @user.save
			session[:current_user_id] = @user.id
			redirect_to user_path(:id) 
			# the above line needs to create sessions too 
			# for new user to be logged in upon registration
		else
			render :index
		end
	end



	def show
		if !current_user
			@user = User.new
			render :index
		end
	end


	private

	def user_params
		params.require(:user).permit(
			:email,
			:password,
			:password_confirmation,
			:license_plate_state,
			:license_plate_number,
			:vehicle_image
		)
	end	

end
