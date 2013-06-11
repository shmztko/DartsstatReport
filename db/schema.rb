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

ActiveRecord::Schema.define(:version => 20130611071643) do

  create_table "awards", :force => true do |t|
    t.integer  "record_id"
    t.string   "award_name"
    t.integer  "award_count"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "awards", ["record_id"], :name => "index_awards_on_record_id"

  create_table "records", :force => true do |t|
    t.integer  "user_id"
    t.datetime "played_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "records", ["user_id"], :name => "index_records_on_user_id"

  create_table "samples", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statistics", :force => true do |t|
    t.integer  "record_id"
    t.string   "score"
    t.integer  "number_of_players"
    t.integer  "game_order"
    t.string   "game_format"
    t.string   "game_name"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "statistics", ["record_id"], :name => "index_statistics_on_record_id"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "card_name"
    t.string   "login_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
