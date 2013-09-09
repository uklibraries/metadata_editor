class CreateRetentions < ActiveRecord::Migration
  def change
    create_table :retentions do |t|
      t.string :name

      t.timestamps
    end
  end
end
