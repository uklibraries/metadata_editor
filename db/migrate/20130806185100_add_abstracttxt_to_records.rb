class AddAbstracttxtToRecords < ActiveRecord::Migration
  def change
    add_column :records, :abstracttxt, :text
  end
end
