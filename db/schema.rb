# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_04_143538) do

  create_table "constellations", force: :cascade do |t|
    t.string "constellation_name"
  end

  create_table "stars", force: :cascade do |t|
    t.string "name"
    t.integer "distance"
    t.integer "apparent_magnitude"
    t.integer "temperature"
    t.integer "confirmed_planets"
    t.integer "constellation_id"
    t.index ["constellation_id"], name: "index_stars_on_constellation_id"
  end

end
