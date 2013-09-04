class CreateWgs84s < ActiveRecord::Migration
  def change
    create_table :wgs84s do |t|
      t.string :name

      t.timestamps
    end
  end
end
