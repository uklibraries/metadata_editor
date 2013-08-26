class DropKentuckyTopicsFromRecords < ActiveRecord::Migration
  def change
   remove_column :records, :kentucky_topic_id
  end

end
