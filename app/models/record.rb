class Record < ActiveRecord::Base
  attr_accessible :archival_container_format_id, :archival_container2_format_id, :archival_container3_format_id, :container_number_1, :container_number_2, :container_number_3, :creator_ids, :date, :description, :format_id, :kentucky_topic_ids,  :language_ids, :publisher, :repository_id, :resource_type_id, :retention_date, :retention_id, :series_statement, :source_ids, :spatial_coverage_ids, :subject_ids, :subjects_used, :title
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
  belongs_to :archival_container2_format, foreign_key: 'archival_container2_format_id', class_name: 'ArchivalContainerFormat'
  belongs_to :archival_container3_format, foreign_key: 'archival_container3_format_id', class_name: 'ArchivalContainerFormat'
 
  validates :format_id,  :language_ids, :resource_type_id, :title, presence: true

  def subjects_used
    self.subjects.map(&:name).join('::')
  end

  def subjects_used=(list)
    self.subjects = list.split('::').collect do |item|
      Subject.find_or_create_by_name(item)
    end
  end
end

