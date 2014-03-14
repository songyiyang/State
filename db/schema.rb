
ActiveRecord::Schema.define(version: 20140313202252) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "states", force: true do |t|
    t.string   "name"
    t.integer  "pop_at_risk"
    t.integer  "reincarcerated"
    t.float    "percent"
    t.string   "abbrev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
