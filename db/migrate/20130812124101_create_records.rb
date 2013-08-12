class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.text :abstract
      t.date :date
      t.string :department
      t.string :depositor
      t.string :depositor_email
      t.string :email
      t.string :phone
      t.string :street_address
      t.string :title
      t.string :url
      t.references :archival_container_format
      t.references :file_format
      t.references :format
      t.references :kytopic
      t.references :repository
      t.references :type

      t.timestamps
    end
    add_index :records, :archival_container_format_id
    add_index :records, :file_format_id
    add_index :records, :format_id
    add_index :records, :kytopic_id
    add_index :records, :repository_id
    add_index :records, :type_id
  end
end
