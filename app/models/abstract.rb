class Abstract < ActiveRecord::Base
  attr_accessible :name
  has_many :records
end
