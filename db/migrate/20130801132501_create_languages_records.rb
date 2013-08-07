class CreateLanguagesRecords < ActiveRecord::Migration
  def change
    create_table :languages_records do |t|
     t.belongs_to :language
     t.belongs_to :record
    end 

    remove_column :records, :language_id, :text 
  end

  
end
