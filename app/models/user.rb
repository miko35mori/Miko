class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :losts, dependent: :destroy
         has_many :groups, dependent: :destroy
         
         has_many :likes, dependent: :destroy
         has_many :liked_losts, through: :likes, source: :lost
         has_many :favorites, dependent: :destroy
         has_many :favorited_groups, through: :favorites, source: :group
         has_many :comments, dependent: :destroy
         has_many :messages, dependent: :destroy

   def already_liked?(lost)
      self.likes.exists?(lost_id: lost.id)
   end

   def already_favorited?(group)
      self.favorites.exists?(group_id: group.id)
   end
end
