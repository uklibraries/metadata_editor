class AddSubjectToRecord < ActiveRecord::Migration
  def change
    add_column :records, :subject_id, :integer
  end
end
