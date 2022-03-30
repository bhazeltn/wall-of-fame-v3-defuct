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

ActiveRecord::Schema[7.0].define(version: 2022_03_30_214656) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "records", force: :cascade do |t|
    t.string "level"
    t.string "segment"
    t.string "score_type"
    t.float "score"
    t.string "competition"
    t.date "date_achieved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "skater_id"
  end

  create_table "skaters", force: :cascade do |t|
    t.string "f_name"
    t.string "l_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
