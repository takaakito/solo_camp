class Play < ApplicationRecord
      has_one_attached :play_image
      belongs_to :user

end
