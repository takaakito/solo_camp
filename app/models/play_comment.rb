class PlayComment < ApplicationRecord
    belongs_to :user
    belongs_to :play
end
