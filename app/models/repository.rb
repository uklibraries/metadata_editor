class Repository < ActiveRecord::Base
  attr_accessible :abstract, :email, :name, :phone, :street_address, :url
  has_many :records
end
