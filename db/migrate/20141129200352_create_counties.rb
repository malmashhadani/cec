class CreateCounties < ActiveRecord::Migration
  def change
    create_table :counties do |t|
      t.integer :county_id
      t.string :name

      t.timestamps
    end
  end
end
