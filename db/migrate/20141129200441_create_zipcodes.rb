class CreateZipcodes < ActiveRecord::Migration
  def change
    create_table :zipcodes do |t|
      t.integer :zipcode_id
      t.integer :zipcode
      t.integer :county_id

      t.timestamps
    end
  end
end
