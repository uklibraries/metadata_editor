class AddColumnsToLanguage < ActiveRecord::Migration
  def change
    add_column :languages, :name, :string
    add_column :languages, :name_fr, :string
    add_column :languages, :alpha3_bib, :string
    add_column :languages, :alpha3_term, :string
    add_column :languages, :alpha2, :string
    remove_column :languages, :language_id, :text
  end
end
