class AddLanguageToRecord < ActiveRecord::Migration
  def change
  add_column :records, :language_id, :text
  end
end
