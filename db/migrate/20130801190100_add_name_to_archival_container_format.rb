class AddNameToArchivalContainerFormat < ActiveRecord::Migration
  def change
    add_column :archival_container_formats, :name, :string
    remove_column :archival_container_formats, :containerformat, :string
  end
end
