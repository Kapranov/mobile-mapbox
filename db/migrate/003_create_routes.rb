class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :place_id
      t.integer :coordinate_id

      t.timestamps null: false
    end
  end
end
