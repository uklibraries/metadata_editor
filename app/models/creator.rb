class Creator < ActiveRecord::Base
  attr_accessible :name, :repository_id
  has_and_belongs_to_many :records
  belongs_to :repository
  validates :name, uniqueness: { scope: :repository_id,
    message: "should be unique for a repository"
  }
end
