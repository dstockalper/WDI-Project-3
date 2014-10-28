class RemoveReviewDetailFromReviews < ActiveRecord::Migration
  def down
  	remove_column :reviews, :review_detail
  end
end
