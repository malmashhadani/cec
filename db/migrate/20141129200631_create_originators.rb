class CreateOriginators < ActiveRecord::Migration
  def change
    create_table :originators do |t|
      t.integer :originator_id
      t.string :name
      t.integer :phonenumber
      t.string :phonedescription
      t.string :email
      t.string :emaildescription
      t.integer :faxnumber

      t.timestamps
    end
  end
end
