class AddArchivalContainer2FormatToRecord < ActiveRecord::Migration
   def change
     add_column :records, :archival_container2_format_id, :integer
     add_index  :records, :archival_container2_format_id
   end
end
