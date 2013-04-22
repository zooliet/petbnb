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

ActiveRecord::Schema.define(:version => 20130422155636) do

  create_table "dummies", :force => true do |t|
    t.string   "name"
    t.text     "desc"
    t.integer  "priority"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pet_houses", :force => true do |t|
    t.string   "address"
    t.text     "desc"
    t.integer  "price"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "title"
    t.integer  "no_of_pets"
    t.string   "size"
    t.boolean  "overnight"
    t.string   "image"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "reservations", :force => true do |t|
    t.datetime "to_date"
    t.datetime "from_date"
    t.integer  "customer_id"
    t.integer  "pet_house_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "profile"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
