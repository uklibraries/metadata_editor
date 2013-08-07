class CreateKytopics < ActiveRecord::Migration
  def change
    create_table :kytopics do |t|
      t.string :name

      t.timestamps
    end
  end
end
