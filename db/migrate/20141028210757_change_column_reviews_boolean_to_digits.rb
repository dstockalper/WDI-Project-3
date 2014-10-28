class ChangeColumnReviewsBooleanToDigits < ActiveRecord::Migration
  def change



  	remove_column :reviews, :aggressive_speeding, :boolean
  	remove_column :reviews, :aggressive_weaving, :boolean
  	remove_column :reviews, :aggressive_tailgating, :boolean
  	remove_column :reviews, :aggressive_cutting, :boolean
  	remove_column :reviews, :aggressive_rage, :boolean
  	remove_column :reviews, :aggressive_other, :boolean
  	remove_column :reviews, :inattentive_braking, :boolean
  	remove_column :reviews, :inattentive_drifting, :boolean
  	remove_column :reviews, :inattentive_phone, :boolean
  	remove_column :reviews, :inattentive_pedestrian, :boolean
  	remove_column :reviews, :inattentive_drunk, :boolean
  	remove_column :reviews, :inattentive_other, :boolean
  	remove_column :reviews, :alert_safe, :boolean
  	remove_column :reviews, :alert_courteous, :boolean
  	remove_column :reviews, :parking_blocking, :boolean
  	remove_column :reviews, :parking_illegal, :boolean

  	add_column :reviews, :aggressive_speeding, :integer
  	add_column :reviews, :aggressive_weaving, :integer
  	add_column :reviews, :aggressive_tailgating, :integer
  	add_column :reviews, :aggressive_cutting, :integer
  	add_column :reviews, :aggressive_rage, :integer
  	add_column :reviews, :aggressive_other, :integer
  	add_column :reviews, :inattentive_braking, :integer
  	add_column :reviews, :inattentive_drifting, :integer
  	add_column :reviews, :inattentive_phone, :integer
  	add_column :reviews, :inattentive_pedestrian, :integer
  	add_column :reviews, :inattentive_drunk, :integer
  	add_column :reviews, :inattentive_other, :integer
  	add_column :reviews, :alert_safe, :integer
  	add_column :reviews, :alert_courteous, :integer
  	add_column :reviews, :parking_blocking, :integer
  	add_column :reviews, :parking_illegal, :integer
  end
end
