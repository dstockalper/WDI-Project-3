class UsersController < ApplicationController


	def index
		if current_user
			redirect_to user_path(:id)
		end

	end

	# New user created on Register
	def create
		@user = User.new user_params

		if @user.save
			redirect_to user_path(:id)
		else
			render :index
		end
	end



	def show
		if !current_user
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
