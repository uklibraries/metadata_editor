class RenameAbstracttxtInRecords < ActiveRecord::Migration
  def change
    rename_column :records, :abstracttxt, :abstract
  end
end
