class CreateDots < ActiveRecord::Migration
  def change
    create_table :dots do |t|

      t.timestamps
    end
  end
end
