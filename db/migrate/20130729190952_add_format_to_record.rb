class AddFormatToRecord < ActiveRecord::Migration
  def change
    add_column :records, :format_id, :integer 
  end
end
