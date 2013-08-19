class Repository < ActiveRecord::Base
  attr_accessible :abstract, :email, :name, :phone, :rights, :street_address, :url
  has_many :records

  after_initialize :add_default_values

  def add_default_values
    if self.new_record?
      self.rights = RecordConfig[:rights]
    end
  end
end
