# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_10_105325) do

  create_table "applications", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "trainee_id"
    t.integer "trainer_id"
    t.integer "gym_id"
    t.index ["gym_id"], name: "index_applications_on_gym_id"
    t.index ["trainee_id"], name: "index_applications_on_trainee_id"
    t.index ["trainer_id"], name: "index_applications_on_trainer_id"
  end

  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "city"
    t.string "contact"
    t.string "description"
    t.string "fees"
    t.string "owner_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["reset_password_token"], name: "index_gyms_on_reset_password_token", unique: true
  end

  create_table "reviews", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "application_id"
    t.integer "gym_id"
    t.integer "trainer_id"
    t.index ["application_id"], name: "index_reviews_on_application_id"
    t.index ["gym_id"], name: "index_reviews_on_gym_id"
    t.index ["trainer_id"], name: "index_reviews_on_trainer_id"
  end

  create_table "trainees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "city"
    t.string "contact"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["reset_password_token"], name: "index_trainees_on_reset_password_token", unique: true
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "city"
    t.string "experience"
    t.string "fees"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["reset_password_token"], name: "index_trainers_on_reset_password_token", unique: true
  end

end
