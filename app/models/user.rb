class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
    has_many :camps, dependent: :destroy
    has_many :foods, dependent: :destroy
    has_many :camp_comments, dependent: :destroy
    has_many :favorites, dependent: :destroy
    has_one_attached :profile_image
    
     enum area:{
     北海道地方:0,
     東北地方:1,関東地方:2,中部地方:3,近畿地方:4,中国・四国地方:5,九州地方:6
   }
     enum level:{
     超初心者:0,
     初心者:1,中級者:2,中上級者:3,上級者:4,超上級者:5,達人:6
   }
  

end
