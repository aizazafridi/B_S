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

ActiveRecord::Schema.define(version: 20171020010945) do

  create_table "actresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_path_file_name"
    t.string "image_path_content_type"
    t.integer "image_path_file_size"
    t.datetime "image_path_updated_at"
    t.string "description"
  end

  create_table "clips", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "actress_id"
    t.string "clip_name"
    t.string "clip_description"
    t.string "movie"
    t.datetime "release_date"
    t.string "clip_tag1"
    t.string "clip_tag2"
    t.string "clip_tag3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "clip_src_file_name"
    t.string "clip_src_content_type"
    t.integer "clip_src_file_size"
    t.datetime "clip_src_updated_at"
    t.string "image_url_file_name"
    t.string "image_url_content_type"
    t.integer "image_url_file_size"
    t.datetime "image_url_updated_at"
    t.index ["actress_id"], name: "index_clips_on_actress_id"
  end

end
