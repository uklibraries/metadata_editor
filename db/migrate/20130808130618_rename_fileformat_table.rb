class RenameFileformatTable < ActiveRecord::Migration
  def change
    rename_table :fileformats, :file_formats
  end
end
