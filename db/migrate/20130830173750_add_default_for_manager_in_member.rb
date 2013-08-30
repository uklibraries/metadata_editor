class AddDefaultForManagerInMember < ActiveRecord::Migration
  def change
    change_column_default :members, :manager, false
  end
end
