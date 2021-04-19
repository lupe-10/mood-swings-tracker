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

ActiveRecord::Schema.define(version: 2021_04_19_165029) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "mood_afters", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "anxiety_level"
    t.string "motivation_level"
    t.string "mood_level"
    t.string "cardiac_frecuency"
    t.string "respiratory_rate"
    t.string "pain"
    t.text "other_thoughts"
    t.bigint "patient_id"
    t.index ["patient_id"], name: "index_mood_afters_on_patient_id"
  end

  create_table "mood_befores", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "anxiety_level"
    t.string "motivation_level"
    t.string "mood_level"
    t.string "cardiac_frecuency"
    t.string "respiratory_rate"
    t.string "pain"
    t.text "other_thoughts"
    t.bigint "patient_id"
    t.index ["patient_id"], name: "index_mood_befores_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.date "birthday"
    t.string "gender"
    t.integer "phone_number"
    t.string "address"
    t.string "pre_existing_disease"
    t.bigint "psychologist_id"
    t.index ["email"], name: "index_patients_on_email", unique: true
    t.index ["psychologist_id"], name: "index_patients_on_psychologist_id"
    t.index ["reset_password_token"], name: "index_patients_on_reset_password_token", unique: true
  end

  create_table "psychologists", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "phone_number"
    t.string "address"
    t.string "professional_registration"
    t.index ["email"], name: "index_psychologists_on_email", unique: true
    t.index ["reset_password_token"], name: "index_psychologists_on_reset_password_token", unique: true
  end

  add_foreign_key "mood_afters", "patients"
  add_foreign_key "mood_befores", "patients"
  add_foreign_key "patients", "psychologists"
end
