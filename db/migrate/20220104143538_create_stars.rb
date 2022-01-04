class CreateStars < ActiveRecord::Migration[6.1]
  def change
    create_table :stars do |t|
      t.string :name
      t.integer :distance
      t.integer :apparent_magnitude
      t.integer :confirmed_planets
      t.references :user
      t.references :constellation
    end
  end
end
