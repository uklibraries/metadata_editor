class DropRecordsCreatorTable < ActiveRecord::Migration
  def change 
   drop_table :records_creators
  end

end
