class Repository < ActiveRecord::Base
  attr_accessible :abstract, :email, :name, :street_address, :url
  has_many :records
end
