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

ActiveRecord::Schema.define(:version => 20130826202537) do

  create_table "formats", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "kentucky_topics", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "kentucky_topics_records", :id => false, :force => true do |t|
    t.integer "kentucky_topic_id"
    t.integer "record_id"
  end

  add_index "kentucky_topics_records", ["kentucky_topic_id", "record_id"], :name => "index_kentucky_topics_records_on_kentucky_topic_id_and_record_id"
  add_index "kentucky_topics_records", ["record_id"], :name => "index_kentucky_topics_records_on_record_id"

  create_table "languages", :force => true do |t|
    t.string   "name"
    t.string   "name_fr"
    t.string   "alpha2"
    t.string   "alpha3_bib"
    t.string   "alpha3_term"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "languages_records", :id => false, :force => true do |t|
    t.integer "language_id"
    t.integer "record_id"
  end

  add_index "languages_records", ["language_id", "record_id"], :name => "index_languages_records_on_language_id_and_record_id"
  add_index "languages_records", ["record_id"], :name => "index_languages_records_on_record_id"

  create_table "records", :force => true do |t|
    t.date     "date"
    t.string   "title"
    t.integer  "format_id"
    t.integer  "repository_id"
    t.integer  "resource_type_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "creator"
    t.integer  "source_id"
    t.string   "description"
    t.string   "publisher"
    t.string   "series_statement"
  end

  add_index "records", ["format_id"], :name => "index_records_on_format_id"
  add_index "records", ["repository_id"], :name => "index_records_on_repository_id"
  add_index "records", ["resource_type_id"], :name => "index_records_on_type_id"
  add_index "records", ["source_id"], :name => "index_records_on_source_id"

  create_table "records_subjects", :id => false, :force => true do |t|
    t.integer "record_id"
    t.integer "subject_id"
  end

  add_index "records_subjects", ["record_id", "subject_id"], :name => "index_records_subjects_on_record_id_and_subject_id"
  add_index "records_subjects", ["subject_id"], :name => "index_records_subjects_on_subject_id"

  create_table "repositories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.text     "abstract"
    t.string   "street_address"
    t.string   "email"
    t.string   "url"
    t.string   "phone"
    t.text     "rights"
  end

  create_table "resource_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sources", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
