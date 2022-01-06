class CreateConstellations < ActiveRecord::Migration[6.1]
  def change
    create_table :constellations do |t|
      t.string :constellation_name
    end
  end
end
