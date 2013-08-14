class AddNewfieldsToRecord < ActiveRecord::Migration
  def change
    add_column :records, :rights, :string
  end
end
