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

ActiveRecord::Schema[7.0].define(version: 2023_06_03_225952) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "domains", force: :cascade do |t|
    t.string "name"
    t.integer "role_min_level"
    t.bigint "owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_domains_on_owner_id"
  end

  create_table "managers", force: :cascade do |t|
    t.bigint "manager_id", null: false
    t.bigint "managed_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["managed_id"], name: "index_managers_on_managed_id"
    t.index ["manager_id"], name: "index_managers_on_manager_id"
  end

  create_table "metrics", force: :cascade do |t|
    t.string "name"
    t.integer "data_type"
    t.string "example"
    t.integer "role_min_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "okr_key_results", force: :cascade do |t|
    t.bigint "okr_id", null: false
    t.bigint "metric_id", null: false
    t.float "expected"
    t.float "actual"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["metric_id"], name: "index_okr_key_results_on_metric_id"
    t.index ["okr_id"], name: "index_okr_key_results_on_okr_id"
  end

  create_table "okrs", force: :cascade do |t|
    t.bigint "parent_id"
    t.string "objective"
    t.integer "allocation"
    t.integer "allocation_scale_in_days"
    t.bigint "owner_id", null: false
    t.integer "state"
    t.boolean "archived"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_okrs_on_owner_id"
    t.index ["parent_id"], name: "index_okrs_on_parent_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "surname"
    t.string "forenames"
    t.string "pronouns"
    t.bigint "role_id", null: false
    t.datetime "hired_at", precision: nil
    t.datetime "terminated_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_people_on_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "public_name"
    t.string "internal_name"
    t.string "acronym"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "domains", "people", column: "owner_id"
  add_foreign_key "managers", "people", column: "managed_id"
  add_foreign_key "managers", "people", column: "manager_id"
  add_foreign_key "okr_key_results", "metrics"
  add_foreign_key "okr_key_results", "okrs"
  add_foreign_key "okrs", "okrs", column: "parent_id"
  add_foreign_key "okrs", "people", column: "owner_id"
  add_foreign_key "people", "roles"
end
