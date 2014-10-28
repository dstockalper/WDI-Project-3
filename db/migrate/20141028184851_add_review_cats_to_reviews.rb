class AddReviewCatsToReviews < ActiveRecord::Migration
  def up
  	add_column :reviews, :aggressive_speeding, :boolean
  	add_column :reviews, :aggressive_weaving, :boolean
  	add_column :reviews, :aggressive_tailgating, :boolean
  	add_column :reviews, :aggressive_cutting, :boolean
  	add_column :reviews, :aggressive_rage, :boolean
  	add_column :reviews, :aggressive_other, :boolean

  	add_column :reviews, :inattentive_braking, :boolean
  	add_column :reviews, :inattentive_drifting, :boolean
  	add_column :reviews, :inattentive_phone, :boolean
  	add_column :reviews, :inattentive_pedestrian, :boolean
  	add_column :reviews, :inattentive_drunk, :boolean
  	add_column :reviews, :inattentive_other, :boolean

  	add_column :reviews, :alert_safe, :boolean
  	add_column :reviews, :alert_courteous, :boolean

  	add_column :reviews, :parking_blocking, :boolean
  	add_column :reviews, :parking_illegal, :boolean

  end
end
