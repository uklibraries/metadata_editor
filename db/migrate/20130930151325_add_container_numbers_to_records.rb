class AddContainerNumbersToRecords < ActiveRecord::Migration
  def change
      add_column :records, :container_number_1, :string
      add_column :records, :container_number_2, :string
      add_column :records, :container_number_3, :string 
  end
end
