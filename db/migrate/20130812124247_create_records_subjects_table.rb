class CreateRecordsSubjectsTable < ActiveRecord::Migration
  def self.up
    create_table :records_subjects, :id => false do |t|
      t.references :record
      t.references :subject
    end
    add_index :records_subjects, [:record_id, :subject_id]
    add_index :records_subjects, :subject_id
  end

  def self.down
    drop_table :records_subjects
  end
end
