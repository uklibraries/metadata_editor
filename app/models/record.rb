class Record < ActiveRecord::Base
  attr_accessible :creator_ids, :date, :description, :format_id, :kentucky_topic_ids,  :language_ids, :publisher, :repository_id, :resource_type_id, :retention_date, :retention_id, :series_statement, :source_id, :spatial_coverage_ids, :subject_ids, :title
  belongs_to :format
  belongs_to :resource_type
  has_and_belongs_to_many :languages
  has_and_belongs_to_many :subjects
  has_and_belongs_to_many :kentucky_topics 
  belongs_to :repository
  belongs_to :retention
  belongs_to :source
  has_and_belongs_to_many :spatial_coverages
  has_and_belongs_to_many :creators
 
  validates :format_id,  :language_ids, :resource_type_id, :title, presence: true

end

