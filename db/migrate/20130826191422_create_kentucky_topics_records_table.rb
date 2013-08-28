class CreateKentuckyTopicsRecordsTable < ActiveRecord::Migration
  def change 
    create_table :kentucky_topics_records, :id=> false do |t| 

     t.references :kentucky_topic
     t.references :record
    end 
    add_index :kentucky_topics_records, [:kentucky_topic_id, :record_id]
    add_index :kentucky_topics_records, :record_id
  end
end
