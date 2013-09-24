class AddRepositoryToCreator < ActiveRecord::Migration
  def change
    add_column :creators, :repository_id, :integer
   end
end
