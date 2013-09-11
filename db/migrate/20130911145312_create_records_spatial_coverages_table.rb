class CreateRecordsSpatialCoveragesTable < ActiveRecord::Migration
 def self.up
  create_table :records_spatial_coverages, :id => false do |t|
    t.references :record      
    t.references :spatial_coverage                                                                                                                                                                                      
    end                                                                                                                                                                                                                    
    add_index :records_spatial_coverages, [:record_id, :spatial_coverage_id], :name => 'rsc_index' 
    add_index :records_spatial_coverages, :spatial_coverage_id 
  end                                                                                                                                                                                                                      
  
  def self.down
    drop_table :records_spatial_coverages
  end 
end 
