class AddIdToMembers < ActiveRecord::Migration
  def change
    add_column :members, :id, :primary_key
  end
end
