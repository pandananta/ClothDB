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

ActiveRecord::Schema.define(:version => 20120816024118) do

  create_table "dresses", :force => true do |t|
    t.string   "fabric"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "source"
    t.string   "image"
    t.string   "brand"
    t.string   "title"
    t.string   "sizing"
    t.integer  "price"
    t.integer  "fans"
    t.string   "neck_type"
    t.string   "sleeve_type"
    t.string   "skirt_type"
    t.string   "skirt_length"
  end

end
