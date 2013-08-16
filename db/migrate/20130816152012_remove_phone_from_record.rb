class RemovePhoneFromRecord < ActiveRecord::Migration
  def up
    remove_column :records, :phone
  end

  def down
    add_column :records, :phone, :string
  end
end
