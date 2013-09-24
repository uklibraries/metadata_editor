class CreateCreatorsRecordsTable < ActiveRecord::Migration
  def self.up
    create_table :creators_records, :id => false do |t|
            t.references :record
            t.references :creator
            end
          
         
        add_index :creators_records, [:record_id, :creator_id] 
        add_index :creators_records, :creator_id 
  end  
    
                                                                                                                          
  def self.down
        drop_table :creators_records
  end 
    
end

