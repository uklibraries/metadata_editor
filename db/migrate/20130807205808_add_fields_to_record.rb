class AddFieldsToRecord < ActiveRecord::Migration
  def change
    add_column :records, :email, :string
    add_column :records, :url, :string
    add_column :records, :phone, :string
    add_column :records, :depositor, :string
    add_column :records, :depositor_email, :string
  end
end
