class CreateFileFormats < ActiveRecord::Migration
  def change
    create_table :file_formats do |t|
      t.string :name

      t.timestamps
    end
  end
end
