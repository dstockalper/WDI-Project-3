class RemoveReviewedPlateStateFromReviews < ActiveRecord::Migration
  def down
  	remove_column :reviews, :reviewed_plate_state
  end
end
