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
		else
			render :index
		end
	end


	def show
		if !current_user
			redirect_to users_path and return
		end

		respond_to do |format|
			format.html

			format.json do
				render json: Review.all
			end

			format.xml do
				render xml: current_user
			end
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
