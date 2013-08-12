class CreateLanguagesRecordsTable < ActiveRecord::Migration
  def self.up
    create_table :languages_records, :id => false do |t|
      t.references :language
      t.references :record
    end
    add_index :languages_records, [:language_id, :record_id]
    add_index :languages_records, :record_id
  end

  def self.down
    drop_table :languages_records
  end
end
