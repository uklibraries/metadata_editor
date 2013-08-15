class ChangeFieldTypeInRecord < ActiveRecord::Migration
  def change 
   change_column :records, :creator, :string
   change_column :records, :source, :string 
  end

end
