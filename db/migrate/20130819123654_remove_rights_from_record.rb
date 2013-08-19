class RemoveRightsFromRecord < ActiveRecord::Migration
  def up
    remove_column :records, :rights
  end

  def down
    add_column :records, :rights, :text
  end
end
