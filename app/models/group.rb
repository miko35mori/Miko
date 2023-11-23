class Group < ApplicationRecord
    belongs_to :user, optional: true
    mount_uploader :image, ImageUploader
    has_many :favorites, dependent: :destroy
    has_many :favorited_users, through: :favorites, source: :user
    has_many :messages, dependent: :destroy
end
