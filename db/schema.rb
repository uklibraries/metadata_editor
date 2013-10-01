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

ActiveRecord::Schema.define(:version => 20131001204518) do

  create_table "archival_container2_formats", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "archival_container3_formats", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "archival_container_formats", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "creators", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "repository_id"
  end

  create_table "creators_records", :id => false, :force => true do |t|
    t.integer "record_id"
    t.integer "creator_id"
  end

  add_index "creators_records", ["creator_id"], :name => "index_creators_records_on_creator_id"
  add_index "creators_records", ["record_id", "creator_id"], :name => "index_creators_records_on_record_id_and_creator_id"

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

  create_table "members", :force => true do |t|
    t.integer  "user_id"
    t.integer  "repository_id"
    t.boolean  "manager",       :default => false
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.boolean  "active",        :default => false
  end

  add_index "members", ["repository_id", "user_id"], :name => "index_members_on_repository_id_and_user_id", :unique => true
  add_index "members", ["user_id"], :name => "index_members_on_user_id"

  create_table "records", :force => true do |t|
    t.date     "date"
    t.string   "title"
    t.integer  "format_id"
    t.integer  "repository_id"
    t.integer  "resource_type_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "source_id"
    t.string   "description"
    t.string   "publisher"
    t.string   "series_statement"
    t.integer  "spatial_coverage_id"
    t.integer  "retention_id"
    t.date     "retention_date"
    t.integer  "creator_id"
    t.integer  "archival_container_format_id"
    t.string   "container_number_1"
    t.string   "container_number_2"
    t.string   "container_number_3"
    t.integer  "archival_container2_format_id"
    t.integer  "archival_container3_format_id"
  end

  add_index "records", ["archival_container2_format_id"], :name => "index_records_on_archival_container2_format_id"
  add_index "records", ["archival_container3_format_id"], :name => "index_records_on_archival_container3_format_id"
  add_index "records", ["archival_container_format_id"], :name => "index_records_on_archival_container_format_id"
  add_index "records", ["creator_id"], :name => "index_records_on_creator_id"
  add_index "records", ["format_id"], :name => "index_records_on_format_id"
  add_index "records", ["repository_id"], :name => "index_records_on_repository_id"
  add_index "records", ["resource_type_id"], :name => "index_records_on_type_id"
  add_index "records", ["retention_id"], :name => "index_records_on_retention_id"
  add_index "records", ["source_id"], :name => "index_records_on_source_id"
  add_index "records", ["spatial_coverage_id"], :name => "index_records_on_spatial_coverage_id"

  create_table "records_sources", :id => false, :force => true do |t|
    t.integer "record_id"
    t.integer "source_id"
  end

  add_index "records_sources", ["record_id", "source_id"], :name => "index_records_sources_on_record_id_and_source_id"
  add_index "records_sources", ["source_id"], :name => "index_records_sources_on_source_id"

  create_table "records_spatial_coverages", :id => false, :force => true do |t|
    t.integer "record_id"
    t.integer "spatial_coverage_id"
  end

  add_index "records_spatial_coverages", ["record_id", "spatial_coverage_id"], :name => "rsc_index"
  add_index "records_spatial_coverages", ["spatial_coverage_id"], :name => "index_records_spatial_coverages_on_spatial_coverage_id"

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

  create_table "retentions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sources", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "repository_id"
  end

  create_table "spatial_coverages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "repository_id"
  end

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "roles_mask"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

end
