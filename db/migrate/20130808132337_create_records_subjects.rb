class CreateRecordsSubjects < ActiveRecord::Migration
  def up
    create_table :records_subjects do |t|
      t.belongs_to :record
      t.belongs_to :subject
    end

    remove_column :records, :subject_id, :integer
  end
end
