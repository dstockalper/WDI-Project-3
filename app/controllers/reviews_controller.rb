class ReviewsController < ApplicationController

	def index
		@review = Review.new

		if !current_user
			@user = User.new
			redirect_to root_path
		end
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
	end



	def review_params
		params.require(:review).permit(
			:reviewer_id,
			:reviewer_location,
			:reviewed_plate_state,
			:reviewed_plate_number,
			:review_category,
			:review_detail
		)
	end	

end
