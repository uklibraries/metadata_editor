class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members, id: false do |t|
      t.references :user
      t.references :repository
      t.boolean :manager

      t.timestamps
    end
    add_index :members, [:repository_id, :user_id], :unique => true
    add_index :members, :user_id
  end
end
