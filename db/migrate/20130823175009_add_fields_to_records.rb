class AddFieldsToRecords < ActiveRecord::Migration
  def change
    add_column :records, :description, :string
    add_column :records, :publisher, :string
    add_column :records, :series_statement, :string 
  end
end
