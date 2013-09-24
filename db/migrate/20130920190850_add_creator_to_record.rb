class AddCreatorToRecord < ActiveRecord::Migration
  def change
    add_column :records, :creator_id, :integer
    add_index  :records, :creator_id
  end
end
