class AddRepositoryToSpatialCoverage < ActiveRecord::Migration
  def change
    add_column :spatial_coverages, :repository_id, :integer
  end
end
