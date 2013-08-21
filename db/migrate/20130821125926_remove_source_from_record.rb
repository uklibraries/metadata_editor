class RemoveSourceFromRecord < ActiveRecord::Migration
  def change 
    remove_column :records, :source
  end

end
