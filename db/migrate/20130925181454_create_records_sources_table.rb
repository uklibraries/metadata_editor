class CreateRecordsSourcesTable < ActiveRecord::Migration

  def self.up
    create_table :records_sources, :id => false do |t|
            t.references :record
            t.references :source
            end
                
               
            add_index :records_sources, [:record_id, :source_id] 
            add_index :records_sources, :source_id 
   end  
      
                                                                                                                            
  def self.down
          drop_table :records_sources
  end 
          
end

