class AddPhoneToRepository < ActiveRecord::Migration
  def change
    add_column :repositories, :phone, :string
  end
end
