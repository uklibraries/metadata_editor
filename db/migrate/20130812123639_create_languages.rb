class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name
      t.string :name_fr
      t.string :alpha2
      t.string :alpha3_bib
      t.string :alpha3_term

      t.timestamps
    end
  end
end
