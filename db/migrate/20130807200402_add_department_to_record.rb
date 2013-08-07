class AddDepartmentToRecord < ActiveRecord::Migration
  def change
    add_column :records, :department, :string
  end
end
