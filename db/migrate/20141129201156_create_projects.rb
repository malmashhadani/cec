class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :project_id
      t.string :name
      t.string :description
      t.string :objective
      t.string :synopsis
      t.string :background
      t.string :comment
      t.string :url
      t.string :urldescription
      t.string :coursenumber
      t.string :coursedepartment
      t.string :coursenotes
      t.string :picture
      t.integer :originator_id
      t.integer :unit_id
      t.integer :county_id
      t.integer :zipcode_id

      t.timestamps
    end
  end
end
