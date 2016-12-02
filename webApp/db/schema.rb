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

ActiveRecord::Schema.define(version: 20161126200325) do

  create_table "elements", id: false, force: :cascade do |t|
    t.string   "id"
    t.string   "name"
    t.text     "description"
    t.boolean  "loaned"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["id"], name: "index_elements_on_id", unique: true
  end

  create_table "lends", force: :cascade do |t|
    t.date     "date"
    t.integer  "quantity"
    t.string   "student_id"
    t.string   "element_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loans", force: :cascade do |t|
    t.date     "date"
    t.integer  "quantity"
    t.integer  "student_id"
    t.integer  "element_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["element_id"], name: "index_loans_on_element_id"
    t.index ["student_id"], name: "index_loans_on_student_id"
  end

  create_table "post2s", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "published"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "published"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", id: false, force: :cascade do |t|
    t.string   "id"
    t.string   "studentCode"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["id"], name: "index_students_on_id", unique: true
    t.index ["studentCode"], name: "index_students_on_studentCode", unique: true
  end

end
