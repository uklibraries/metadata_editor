class ArchivalContainerFormat < ActiveRecord::Base
  attr_accessible :name
  has_many :records
end
