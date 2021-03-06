# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20201129231005) do

  create_table "question_accesses", force: :cascade do |t|
    t.datetime "date"
    t.integer "times_accessed"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_question_accesses_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "statement"
    t.text "text"
    t.string "answer"
    t.integer "daily_access"
    t.string "discipline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "t_question_accesses", force: :cascade do |t|
    t.integer "question_id"
    t.datetime "date"
    t.integer "times_accessed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "t_questions", force: :cascade do |t|
    t.integer "question_id"
    t.string "statement"
    t.text "text"
    t.string "answer"
    t.integer "daily_access"
    t.string "discipline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "authentication_token", limit: 30
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
