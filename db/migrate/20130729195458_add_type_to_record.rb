class AddTypeToRecord < ActiveRecord::Migration
  def change
    add_column :records, :type_id, :integer
  end
end
