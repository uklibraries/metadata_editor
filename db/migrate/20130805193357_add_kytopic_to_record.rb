class AddKytopicToRecord < ActiveRecord::Migration
  def change
    add_column :records, :kytopic_id, :integer
  end
end
