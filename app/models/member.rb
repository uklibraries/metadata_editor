class Member < ActiveRecord::Base
  belongs_to :user
  belongs_to :repository
  attr_accessible :user_id, :repository_id, :manager
  validates :repository_id, uniqueness: { scope: :user_id }
  validates :user_id, uniqueness: { scope: :repository_id }
end
