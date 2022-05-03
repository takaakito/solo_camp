class Play < ApplicationRecord
      has_one_attached :play_image
      belongs_to :user
      has_many :play_comments, dependent: :destroy
      has_many :play_favorites, dependent: :destroy
      
      def favorited_by?(user)
      play_favorites.where(user_id: user.id).exists?
      end

end
