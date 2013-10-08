class CreatesArchivalContainerFormats < ActiveRecord::Migration
    def change
      create_table :archival_container_formats do |t|
      t.string :name
    
      t.timestamps
      end 
    end 
end
