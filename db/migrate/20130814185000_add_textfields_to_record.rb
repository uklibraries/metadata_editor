class AddTextfieldsToRecord < ActiveRecord::Migration
  def change
    add_column :records, :creator, :text, :limit => 255
    add_column :records, :source, :text, :limit => 255 
  end
end
