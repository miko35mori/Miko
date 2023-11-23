class Like < ApplicationRecord
  belongs_to :user
  belongs_to :lost
  validates_uniqueness_of :lost_id, scope: :user_id
end
