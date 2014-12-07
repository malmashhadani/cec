class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :unit_id
      t.string :name

      t.timestamps
    end
  end
end
