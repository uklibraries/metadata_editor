class RenameTypeIndex < ActiveRecord::Migration
  def change
    rename_index :records, :index_records_on_type_id, :index_records_on_resource_type_id
  end
end
