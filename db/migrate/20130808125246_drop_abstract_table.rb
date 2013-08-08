class DropAbstractTable < ActiveRecord::Migration
  def up
    remove_column :records, :abstract_id
    drop_table :abstracts
  end

  def down
    create_table :abstracts do |t|
      t.string :name

      t.timestamps
    end
    add_column :records, :abstract_id, :integer 
  end
end
