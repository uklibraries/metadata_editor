class AddAbstractToRecord < ActiveRecord::Migration
  def change
    add_column :records, :abstract_id, :integer 
  end
end
