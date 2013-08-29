class Member < ActiveRecord::Base
  belongs_to :user
  belongs_to :repository
  attr_accessible :manager
  validates :repository, uniqueness: { scope: :user }
end
