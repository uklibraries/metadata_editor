class AddRepositoryToRecord < ActiveRecord::Migration
  def change
    add_column :records, :repository_id, :integer
  end
end
