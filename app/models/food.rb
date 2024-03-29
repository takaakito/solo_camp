class Food < ApplicationRecord
    belongs_to :user
    has_many :food_comments, dependent: :destroy
    has_many :food_favorites, dependent: :destroy
    has_one_attached :food_image
    
   enum food_level:{
     誰でも簡単:0,
     初心者:1,中級者:2,上級者:3
   }
   enum food_time:{
     すぐできる:0,
     ちょっと時間がかかる:1,かなり時間がかかる:2,前日から仕込みが必要:3
   }

    def favorited_by?(user)
      food_favorites.where(user_id: user.id).exists?
    end
    
end
