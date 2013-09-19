class Repository < ActiveRecord::Base
  attr_accessible :abstract, :email, :name, :phone, :rights, :street_address, :url
  has_many :records
  has_many :members
  has_many :spatial_coverages
  has_many :users, through: :members

  after_initialize :add_default_values

  def add_default_values
    if self.new_record?
      self.rights = RecordConfig[:rights]
    end
  end
end
