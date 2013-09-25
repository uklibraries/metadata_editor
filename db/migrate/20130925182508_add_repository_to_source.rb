class AddRepositoryToSource < ActiveRecord::Migration
  def change
      add_column :sources, :repository_id, :integer                                      
  end
end
