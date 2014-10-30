class ReviewsController < ApplicationController

	def index

		@review = Review.new

		if !current_user
			@user = User.new
			redirect_to root_path
		end

		render json: Review.where("reviewed_plate_number = '#{current_user.license_plate_number}'")
	end


	def new
		@review = Review.new

		if !current_user
			@user = User.new
			redirect_to root_path
		end

		
	end


	def create
		@review = Review.new review_params
		if @review.save
			redirect_to root_path
		else
			render :new
		end
	end


	def show
		render json: Review.find(params[:id]).to_json
	end

	private

	def review_params
		params.require(:review).permit(
			:reviewer_id,
			:reviewer_location,
			:reviewed_plate_state,
			:reviewed_plate_number,
			:aggressive_speeding,
			:aggressive_weaving,
			:aggressive_tailgating,
			:aggressive_cutting,
			:aggressive_rage,
			:aggressive_other,
			:inattentive_braking,
			:inattentive_drifting,
			:inattentive_phone,
			:inattentive_pedestrian,
			:inattentive_drunk,
			:inattentive_other,
			:alert_safe,
			:alert_courteous,
			:parking_blocking,
			:parking_illegal
		)
	end	

end
