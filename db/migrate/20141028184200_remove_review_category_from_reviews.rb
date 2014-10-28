class RemoveReviewCategoryFromReviews < ActiveRecord::Migration
  def down
  	remove_column :reviews, :review_category
  end
end
