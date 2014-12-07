class CreatePhysicaladdresses < ActiveRecord::Migration
  def change
    create_table :physicaladdresses do |t|
      t.integer :phyadd_id
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :project_id

      t.timestamps
    end
  end
end
