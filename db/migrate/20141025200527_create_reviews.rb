class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|

      t.integer	:reviewer_id
      t.string	:reviewer_plate_state
      t.string	:reviewer_plate_number
      t.string	:reviewer_location

      t.integer :reviewed_id
      t.string	:reviewed_plate_state
      t.string	:reviewed_plate_number
      t.string	:reviewed_location

      t.string	:review_category
      t.string	:review_detail
      t.timestamps
    end
  end
end
