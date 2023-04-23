ActiveRecord::Schema.define(version: 2023_04_23_064956) do

  create_table "nearest_stations", force: :cascade do |t|
    t.string "railway"
    t.string "station_name"
    t.integer "walk_minutes"
    t.integer "property_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_nearest_stations_on_property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "property"
    t.integer "rent"
    t.string "address"
    t.integer "building_age"
    t.string "remarks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "nearest_stations", "properties"
end
