class CreateKentuckyTopicsRecordsTable < ActiveRecord::Migration
  def up
    create_table :kentucky_topics_records, :id=> false do |t| 
     t.string :name 

     t.timestamps 

     t.references :kentucky_topic
     t.references :record
     end 
     add_index :kentucky_topics_records, [:kentucky_topic_id, :record_id]
     add_index :kentucky_topics_records, :record_id
  end

  def down  
     remove_column :records, :kentucky_topic_id
     remove_index  :records, :kentucky_topic_id 
  end
end
