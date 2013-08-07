class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.text :language_id

      t.timestamps
    end
  end
end
