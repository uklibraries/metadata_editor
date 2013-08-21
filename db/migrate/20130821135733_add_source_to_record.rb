class AddSourceToRecord < ActiveRecord::Migration
  def change
     add_column :records, :source_id, :integer
  end
end
