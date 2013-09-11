class Retention < ActiveRecord::Base
  attr_accessible :name
  has_many :records

  def self.temporal
    Retention.where(:name => 'temporal').first
  end
end
