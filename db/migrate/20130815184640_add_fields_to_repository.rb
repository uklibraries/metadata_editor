class AddFieldsToRepository < ActiveRecord::Migration
  def change
    add_column :repositories, :abstract, :text
    add_column :repositories, :street_address, :string
    add_column :repositories, :email, :string
    add_column :repositories, :url, :string
  end
end
