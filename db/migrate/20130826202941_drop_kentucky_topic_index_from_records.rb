class DropKentuckyTopicIndexFromRecords < ActiveRecord::Migration
  def change 
    remove_index :records, :kentucky_topic_id
  end

end
