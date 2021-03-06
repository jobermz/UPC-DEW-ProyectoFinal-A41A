# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130604061938) do

  create_table "districts", :force => true do |t|
    t.string   "district_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "genres", :force => true do |t|
    t.string   "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.integer  "menber_id"
    t.integer  "genre_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "groups", ["genre_id"], :name => "index_groups_on_genre_id"
  add_index "groups", ["menber_id"], :name => "index_groups_on_menber_id"

  create_table "identity_document_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "locals", :force => true do |t|
    t.string   "description"
    t.string   "address"
    t.string   "phone"
    t.string   "map_url"
    t.integer  "district_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "locals", ["district_id"], :name => "index_locals_on_district_id"

  create_table "menbers", :force => true do |t|
    t.string   "student"
    t.string   "group"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "person_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sexes", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "father_name"
    t.string   "mother_name"
    t.string   "name"
    t.string   "mail"
    t.string   "password"
    t.integer  "sex_id"
    t.integer  "person_type_id"
    t.integer  "identity_document_type_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "users", ["identity_document_type_id"], :name => "index_users_on_identity_document_type_id"
  add_index "users", ["person_type_id"], :name => "index_users_on_person_type_id"
  add_index "users", ["sex_id"], :name => "index_users_on_sex_id"

end
