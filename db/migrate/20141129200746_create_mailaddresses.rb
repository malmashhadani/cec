class CreateMailaddresses < ActiveRecord::Migration
  def change
    create_table :mailaddresses do |t|
      t.integer :mailadd_id
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :project_id

      t.timestamps
    end
  end
end
