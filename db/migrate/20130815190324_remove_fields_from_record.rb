class RemoveFieldsFromRecord < ActiveRecord::Migration
  def up
    remove_column :records, :abstract
    remove_column :records, :department
    remove_column :records, :street_address
    remove_column :records, :email
    remove_column :records, :url
    remove_column :records, :depositor
    remove_column :records, :depositor_email
  end

  def down
    add_column :records, :depositor_email, :string
    add_column :records, :depositor, :string
    add_column :records, :url, :string
    add_column :records, :email, :string
    add_column :records, :street_address, :string
    add_column :records, :department, :string
    add_column :records, :abstract, :text
  end
end
