class AddSpatialCoverageToRecord < ActiveRecord::Migration
  def change
    add_column :records, :spatial_coverage_id, :integer
    add_index  :records, :spatial_coverage_id
  end
end
