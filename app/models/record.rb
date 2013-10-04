class Record < ActiveRecord::Base
  attr_accessible :archival_container_format_id, :archival_container2_format_id, :archival_container3_format_id, :container_number_1, :container_number_2, :container_number_3, :creator_ids, :date, :description, :format_id, :kentucky_topic_ids,  :language_ids, :publisher, :repository_id, :resource_type_id, :retention_date, :retention_id, :series_statement, :source_ids, :spatial_coverage_ids, :subject_ids, :title
  belongs_to :format
  belongs_to :resource_type
  has_and_belongs_to_many :languages
  has_and_belongs_to_many :subjects
  has_and_belongs_to_many :kentucky_topics 
  belongs_to :repository
  belongs_to :retention
  has_and_belongs_to_many :sources
  has_and_belongs_to_many :spatial_coverages
  has_and_belongs_to_many :creators
  belongs_to :archival_container_format
 
  validates :format_id,  :language_ids, :resource_type_id, :title, presence: true

  def archival_container2_format
      ArchivalContainerFormat.find(self.archival_container2_format_id)
  end

  def archival_container3_format
      ArchivalContainerFormat.find(self.archival_container3_format_id)
  end
end

