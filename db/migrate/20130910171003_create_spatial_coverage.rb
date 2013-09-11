class CreateSpatialCoverage < ActiveRecord::Migration
  def change 
    create_table :spatial_coverages do |t|
      t.string :name
    
      t.timestamps
    end
  end
end
