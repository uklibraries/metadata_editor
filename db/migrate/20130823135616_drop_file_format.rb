class DropFileFormat < ActiveRecord::Migration
  def up
    drop_table :file_formats
    remove_column :records, :file_format_id
  end

  def down
    create_table :file_formats do |t|
      t.string :name

      t.timestamps
    end
    add_column :records, :file_format_id, :integer
    add_index :records, :file_format_id
  end
end
