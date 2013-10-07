class CreatesArchivalContainer2Formats < ActiveRecord::Migration
      def change
        create_table :archival_container2_formats do |t|
            t.string :name
          
            t.timestamps
        end 
       end 
end

