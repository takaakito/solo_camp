class CampComment < ApplicationRecord
    belongs_to :user
    belongs_to :camp
end
