class Language < ActiveRecord::Base
  attr_accessible :name, :name_fr, :alpha3_bib, :alpha3_term, :alpha2 
  has_and_belongs_to_many :records
end
