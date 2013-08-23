class Record < ActiveRecord::Base
  attr_accessible :creator, :date, :description, :format_id, :kentucky_topic_id,  :language_ids, :publisher, :repository_id, :series_statement, :source_id, :subject_ids, :title, :resource_type_id
  belongs_to :format
  belongs_to :resource_type
  has_and_belongs_to_many :languages
  has_and_belongs_to_many :subjects
  belongs_to :kentucky_topic
  belongs_to :repository
  belongs_to :source
 
  validates :format_id, :kentucky_topic_id, :language_ids, :resource_type_id, :title, presence: true

end

