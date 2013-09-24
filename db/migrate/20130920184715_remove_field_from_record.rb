class RemoveFieldFromRecord < ActiveRecord::Migration
  def change 
   remove_column :records, :creator
  end

end
