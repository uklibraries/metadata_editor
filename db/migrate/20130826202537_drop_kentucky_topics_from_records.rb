class DropKentuckyTopicsFromRecords < ActiveRecord::Migration
  def up 
    remove_column :records, :kentucky_topic_id
  end
  
  def down
    add_column :records, :kentucky_topic_id, :integer
    add_index  :records, :kentucky_topic_id 
  end 
end
