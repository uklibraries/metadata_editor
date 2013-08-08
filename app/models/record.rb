class Record < ActiveRecord::Base
  attr_accessible :abstract, :archival_container_format_id, :date, :fileformat_id, :format_id, :kytopic_id,  :language_ids, :repository_id, :subject_id, :title, :type_id 
  belongs_to :format
  belongs_to :type
  has_and_belongs_to_many :language
  belongs_to :archival_container_format
  belongs_to :subject
  belongs_to :fileformat
  belongs_to :kytopic
  belongs_to :repository
end

