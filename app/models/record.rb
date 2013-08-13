class Record < ActiveRecord::Base
  attr_accessible :abstract, :archival_container_format_id, :date, :department, :depositor, :depositor_email, :email, :file_format_id, :format_id, :kytopic_id,  :language_ids, :phone, :repository_id, :rights, :street_address, :subject_ids, :title, :type_id, :url
  belongs_to :format
  belongs_to :type
  has_and_belongs_to_many :languages
  belongs_to :archival_container_format
  has_and_belongs_to_many :subjects
  belongs_to :file_format
  belongs_to :kytopic
  belongs_to :repository
end

