class DropArchivalContainerFormat < ActiveRecord::Migration
  def up
    drop_table :archival_container_formats
    remove_column :records, :archival_container_format_id
  end

  def down
    create_table :archival_container_formats do |t|
      t.string :name

      t.timestamps
    end
    add_column :records, :archival_container_format_id, :integer
    add_index :records, :archival_container_format_id
  end
end
