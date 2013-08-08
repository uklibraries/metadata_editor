class RenameFileformatInRecord < ActiveRecord::Migration
  def change
    rename_column :records, :fileformat_id, :file_format_id
  end
end
