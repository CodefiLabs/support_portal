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

ActiveRecord::Schema.define(version: 2018_11_19_221048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "citext"
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "agencies", force: :cascade do |t|
    t.string "name"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agencies_clients", force: :cascade do |t|
    t.bigint "agencies_id"
    t.bigint "clients_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agencies_id"], name: "index_agencies_clients_on_agencies_id"
    t.index ["clients_id"], name: "index_agencies_clients_on_clients_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "client_id"
    t.string "user_type"
    t.bigint "creator_id"
    t.integer "category_id"
    t.string "category_title"
    t.index ["client_id"], name: "index_categories_on_client_id"
    t.index ["creator_id"], name: "index_categories_on_creator_id"
  end

  create_table "clients", force: :cascade do |t|
    t.citext "name"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.bigint "agency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agency_id"], name: "index_clients_on_agency_id"
    t.index ["name"], name: "index_clients_on_name", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "ticket_id"
    t.bigint "user_id"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_id"], name: "index_comments_on_ticket_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "customers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discussions", force: :cascade do |t|
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "internal_notes", force: :cascade do |t|
    t.integer "commentor_id"
    t.integer "ticket_id"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "priorties", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.bigint "client_id"
    t.integer "assigned_to"
    t.string "internal_status"
    t.string "external_status"
    t.string "title"
    t.datetime "start_time"
    t.datetime "end_time"
    t.float "total_time"
    t.float "adjusted_time"
    t.string "priority"
    t.boolean "is_deleted"
    t.text "message"
    t.string "requester"
    t.datetime "date_requested"
    t.string "upload"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_tickets_on_category_id"
    t.index ["client_id"], name: "index_tickets_on_client_id"
  end

  create_table "user_categories", force: :cascade do |t|
    t.bigint "users_id"
    t.bigint "categories_id"
    t.string "category_title"
    t.index ["categories_id"], name: "index_user_categories_on_categories_id"
    t.index ["users_id"], name: "index_user_categories_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "company"
    t.string "job_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer "invitation_limit"
    t.string "invited_by_type"
    t.bigint "invited_by_id"
    t.integer "invitations_count", default: 0
    t.integer "role"
    t.bigint "agency_id"
    t.bigint "client_id"
    t.bigint "category_id"
    t.index ["agency_id"], name: "index_users_on_agency_id"
    t.index ["category_id"], name: "index_users_on_category_id"
    t.index ["client_id"], name: "index_users_on_client_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true
    t.index ["invitations_count"], name: "index_users_on_invitations_count"
    t.index ["invited_by_id"], name: "index_users_on_invited_by_id"
    t.index ["invited_by_type", "invited_by_id"], name: "index_users_on_invited_by_type_and_invited_by_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "agencies_clients", "agencies", column: "agencies_id"
  add_foreign_key "agencies_clients", "clients", column: "clients_id"
  add_foreign_key "categories", "clients"
  add_foreign_key "comments", "tickets"
  add_foreign_key "comments", "users"
  add_foreign_key "tickets", "categories"
  add_foreign_key "tickets", "clients"
  add_foreign_key "users", "agencies"
  add_foreign_key "users", "categories"
  add_foreign_key "users", "clients"
end
