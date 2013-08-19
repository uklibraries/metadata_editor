class AddRightsToRepository < ActiveRecord::Migration
  def change
    add_column :repositories, :rights, :text
  end
end
