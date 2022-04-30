class Play < ApplicationRecord
      has_one_attached :play_image
      belongs_to :user
      has_many :play_comments, dependent: :destroy

end
