class Record < ActiveRecord::Base
  attr_accessible :abstract_id, :abstracttxt, :archival_container_format_id, :date,:department, :depositor, :depositor_email, :email, :fileformat_id, :format_id, :kytopic_id,  :language_ids, :phone, :repository_id, :street_address, :subject_id, :title, :type_id, :url 
  belongs_to :format
  belongs_to :type
  has_and_belongs_to_many :language
  belongs_to :archival_container_format
  belongs_to :subject
  belongs_to :fileformat
  belongs_to :kytopic
  belongs_to :repository
  belongs_to :abstract
end

