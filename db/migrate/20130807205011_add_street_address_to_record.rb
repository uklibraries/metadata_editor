class AddStreetAddressToRecord < ActiveRecord::Migration
  def change
    add_column :records, :street_address, :string
  end
end
