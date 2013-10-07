class CreatesArchivalContainer3Formats < ActiveRecord::Migration
    def change
      create_table :archival_container3_formats do |t|
         t.string :name
          
            t.timestamps
     end 
   end 
end

