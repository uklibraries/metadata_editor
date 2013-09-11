class AddRetentionToRecord < ActiveRecord::Migration
  def change
    add_column :records, :retention_id, :integer
    add_index :records, :retention_id

    add_column :records, :retention_date, :date, :default => '0000-00-00'
  end
end
