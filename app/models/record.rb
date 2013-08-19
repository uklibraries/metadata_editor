class Record < ActiveRecord::Base
  attr_accessible :archival_container_format_id, :creator, :date, :file_format_id, :format_id, :kytopic_id,  :language_ids, :repository_id, :source, :subject_ids, :title, :type_id
  belongs_to :format
  belongs_to :type
  has_and_belongs_to_many :languages
  belongs_to :archival_container_format
  has_and_belongs_to_many :subjects
  belongs_to :file_format
  belongs_to :kytopic
  belongs_to :repository
  
  validates :format_id, :kytopic_id, :language_ids, :type_id, :title, presence: true

end

