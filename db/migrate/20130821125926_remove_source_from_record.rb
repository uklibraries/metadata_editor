class RemoveSourceFromRecord < ActiveRecord::Migration
  def up 
    remove_column :records, :source
  end
 
  def down
    add_column :records, :source, :string
  end
end
