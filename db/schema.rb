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

ActiveRecord::Schema.define(version: 2021_04_30_001109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.text "namespace"
    t.text "body"
    t.text "resource_type"
    t.decimal "resource_id"
    t.text "author_type"
    t.decimal "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "idx_17494_index_active_admin_comments_on_author_type_and_author"
    t.index ["namespace"], name: "idx_17494_index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "idx_17494_index_active_admin_comments_on_resource_type_and_reso"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.text "name", null: false
    t.text "record_type", null: false
    t.decimal "record_id", null: false
    t.decimal "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "idx_17503_index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "idx_17503_index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.text "key", null: false
    t.text "filename", null: false
    t.text "content_type"
    t.text "metadata"
    t.text "service_name", null: false
    t.decimal "byte_size", null: false
    t.text "checksum", null: false
    t.datetime "created_at", null: false
    t.text "storage_url"
    t.index ["key"], name: "idx_17512_index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.decimal "blob_id", null: false
    t.text "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "idx_17521_index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "actresses", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image_path_file_name"
    t.text "image_path_content_type"
    t.bigint "image_path_file_size"
    t.datetime "image_path_updated_at"
    t.text "description"
  end

  create_table "admin_users", force: :cascade do |t|
    t.text "email", default: "", null: false
    t.text "encrypted_password", default: "", null: false
    t.text "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "idx_17539_index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "idx_17539_index_admin_users_on_reset_password_token", unique: true
  end

  create_table "clips", force: :cascade do |t|
    t.decimal "actress_id"
    t.text "clip_name"
    t.text "clip_description"
    t.text "movie"
    t.datetime "release_date"
    t.text "clip_tag1"
    t.text "clip_tag2"
    t.text "clip_tag3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image_url_file_name"
    t.text "image_url_content_type"
    t.bigint "image_url_file_size"
    t.datetime "image_url_updated_at"
    t.text "clip_src"
    t.boolean "mature", default: false
    t.boolean "link_broken", default: false
    t.text "clip_tag4"
    t.text "clip_tag5"
    t.text "download_link"
    t.index ["actress_id"], name: "idx_17556_index_clips_on_actress_id"
  end

  create_table "feature_actresses", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "actress_id"
    t.index ["actress_id"], name: "idx_17567_index_feature_actresses_on_actress_id"
  end

  create_table "feature_clips", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "clip_id"
    t.index ["clip_id"], name: "idx_17576_index_feature_clips_on_clip_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email", default: "", null: false
    t.text "encrypted_password", default: "", null: false
    t.text "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "idx_17591_index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "idx_17591_index_users_on_reset_password_token", unique: true
  end

end
