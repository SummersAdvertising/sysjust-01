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

ActiveRecord::Schema.define(:version => 20120809072202) do

  create_table "banners", :force => true do |t|
    t.string   "category"
    t.string   "title_01"
    t.text     "content_01"
    t.string   "hyperlink_01"
    t.string   "title_02"
    t.text     "content_02"
    t.string   "hyperlink_02"
    t.string   "title_03"
    t.text     "content_03"
    t.string   "hyperlink_03"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "excerpt_image_01_file_name"
    t.string   "excerpt_image_01_content_type"
    t.integer  "excerpt_image_01_file_size"
    t.datetime "excerpt_image_01_updated_at"
    t.string   "excerpt_image_02_file_name"
    t.string   "excerpt_image_02_content_type"
    t.integer  "excerpt_image_02_file_size"
    t.datetime "excerpt_image_02_updated_at"
    t.string   "excerpt_image_03_file_name"
    t.string   "excerpt_image_03_content_type"
    t.integer  "excerpt_image_03_file_size"
    t.datetime "excerpt_image_03_updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cats", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "video"
  end

  create_table "courses", :force => true do |t|
    t.string   "session"
    t.string   "subject"
    t.string   "start_time"
    t.string   "end_time"
    t.string   "lecturer"
    t.string   "address"
    t.text     "content"
    t.integer  "registration_quota"
    t.boolean  "is_display"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "enrollments", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "company"
    t.string   "professional_title"
    t.integer  "course_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "enrollments", ["course_id"], :name => "index_enrollments_on_course_id"

  create_table "experiences", :force => true do |t|
    t.string   "contact_person"
    t.string   "phone_number"
    t.string   "email"
    t.integer  "attendant_number"
    t.string   "company_name"
    t.string   "professional_title"
    t.text     "comment"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "news_updates", :force => true do |t|
    t.string   "title"
    t.string   "source"
    t.string   "category"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "service_emails", :force => true do |t|
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "is_admin",               :default => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
