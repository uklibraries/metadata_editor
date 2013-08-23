class RenameKytopic < ActiveRecord::Migration
  def change
    rename_table :kytopics, :kentucky_topics
    rename_column :records, :kytopic_id, :kentucky_topic_id
    rename_index :records, :index_records_on_kytopic_id, :index_records_on_kentucky_topic_id
  end
end
