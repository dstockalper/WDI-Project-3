class RemoveCruftFromReviews < ActiveRecord::Migration
  def down
  	remove_column :reviews, :reviewer_plate_state
  	remove_column :reviews, :reviewer_plate_number
  	remove_column :reviews, :reviewed_id
  	remove_column :reviews, :reviewed_location
  end
end
