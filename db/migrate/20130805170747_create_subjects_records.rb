class CreateSubjectsRecords < ActiveRecord::Migration
  def change
      create_table :subjects_records do |t| 
        t.belongs_to :subjects
        t.belongs_to :records  
    end
  end 
end
