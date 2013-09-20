class Creator < ActiveRecord::Base
  attr_accessible :name, :creator_id
  has_and_belongs_to_many :records
  belongs_to :repository
  validates :name, uniqueness: { scope: :creator_id,
    message: "should be unique for a repository"
  }
end
