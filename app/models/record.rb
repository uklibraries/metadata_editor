class Record < ActiveRecord::Base
  attr_accessible :archival_container_format_id, :creator, :date, :file_format_id, :format_id, :kentucky_topic_id,  :language_ids, :repository_id, :source_id, :subject_ids, :title, :resource_type_id
  belongs_to :format
  belongs_to :resource_type
  has_and_belongs_to_many :languages
  belongs_to :archival_container_format
  has_and_belongs_to_many :subjects
  belongs_to :file_format
  belongs_to :kentucky_topic
  belongs_to :repository
  belongs_to :source
 
  validates :format_id, :kentucky_topic_id, :language_ids, :resource_type_id, :title, presence: true

end

