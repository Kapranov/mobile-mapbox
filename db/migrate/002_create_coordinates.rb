class CreateCoordinates < ActiveRecord::Migration
  def change
    create_table :coordinates do |t|
      t.decimal :lat, precision: 10, scale: 6
      t.decimal :lon, precision: 10, scale: 6

      t.timestamps null: false
    end
  end
end
