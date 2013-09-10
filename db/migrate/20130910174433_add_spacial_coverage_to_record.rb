class AddSpacialCoverageToRecord < ActiveRecord::Migration
  def change
     add_column :records, :spacial_coverage_id, :integer
     add_index  :records, :spacial_coverage_id
   end
end
