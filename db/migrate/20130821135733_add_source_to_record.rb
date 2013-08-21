class AddSourceToRecord < ActiveRecord::Migration
  def change
     add_column :records, :source_id, :integer
     add_index :records, :source_id  
  end
end
