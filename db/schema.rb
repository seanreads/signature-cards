# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090920023116) do

  create_table "cards", :id => false, :force => true do |t|
    t.string   "uuid",       :limit => 36,                      :null => false
    t.string   "name",       :limit => 75
    t.string   "passcode",   :limit => 25
    t.string   "heading",    :limit => 144
    t.text     "body",       :limit => 1000
    t.boolean  "published",                  :default => false
    t.integer  "theme_id",                   :default => -1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "signatures", :id => false, :force => true do |t|
    t.string   "uuid",       :limit => 36,   :null => false
    t.string   "card_id",                    :null => false
    t.text     "note",       :limit => 1000
    t.string   "name",       :limit => 75
    t.integer  "x",                          :null => false
    t.integer  "y",                          :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
