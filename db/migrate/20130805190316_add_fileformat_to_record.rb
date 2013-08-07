class AddFileformatToRecord < ActiveRecord::Migration
  def change
    add_column :records, :fileformat_id, :integer
  end
end
