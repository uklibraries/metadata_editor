class CreateArchivalContainerFormats < ActiveRecord::Migration
  def change
    create_table :archival_container_formats do |t|
      t.string :containerformat
    end
  end
end
