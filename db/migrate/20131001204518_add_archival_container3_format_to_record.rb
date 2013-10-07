class AddArchivalContainer3FormatToRecord < ActiveRecord::Migration
  def change
         add_column :records, :archival_container3_format_id, :integer
         add_index  :records, :archival_container3_format_id
   end
end
