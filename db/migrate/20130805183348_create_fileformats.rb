class CreateFileformats < ActiveRecord::Migration
  def change
    create_table :fileformats do |t|
      t.string :name

      t.timestamps
    end
  end
end
