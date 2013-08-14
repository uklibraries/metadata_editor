class ChangeRightsTypeInRecords < ActiveRecord::Migration
  def self.up
    change_column :records, :rights, :text
  end

  def self.down
    change_column :records, :rights, :string
  end
end
