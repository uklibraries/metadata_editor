class SpatialCoverage < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :records

  validates :name, :uniqueness => true 
end

name = SpatialCoverage.find_or_create_by_name('38.031912, -84.495327')

