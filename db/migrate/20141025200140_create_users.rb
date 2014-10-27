class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :username
      t.string :email
      t.string :password
      t.string :license_plate_state
      t.string :license_plate_number
      t.timestamps
    end
  end
end
