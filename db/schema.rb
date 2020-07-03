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

ActiveRecord::Schema.define(version: 2020_06_28_170318) do

  create_table "schedule_items", force: :cascade do |t|
    t.date "scheduledDate"
    t.time "scheduledTime"
    t.string "title"
    t.string "subtitle"
    t.boolean "attended"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "support_plans", force: :cascade do |t|
    t.string "supportWorkerName"
    t.string "supportWorkerPhone"
    t.string "whatsImportant"
    t.string "goals"
    t.string "challenges"
    t.string "howAmIBestSupported"
    t.string "expectedOfMe"
    t.string "expectedOfLinkWorker"
    t.string "longTermConditions"
    t.string "support"
    t.string "whatTimeMightItTake"
    t.date "reviewDate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
