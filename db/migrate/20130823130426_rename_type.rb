class RenameType < ActiveRecord::Migration
  def change
    rename_table :types, :resource_types
    rename_column :records, :type_id, :resource_type_id
  end
end
