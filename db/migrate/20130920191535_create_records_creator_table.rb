class CreateRecordsCreatorTable < ActiveRecord::Migration
def self.up
  create_table :records_creators, :id => false do |t|
          t.references :record      
          t.references :creator
          end                                                                                                                       
     
    add_index :records_creators, [:record_id, :creator_id] 
    add_index :records_creators, :creator_id 
 end  

                                                                                                                       
def self.down
    drop_table :records_creators
end 

end
