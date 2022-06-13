class PlayFavoritesController < ApplicationController
   def create
    @play = Play.find(params[:play_id])
    favorite = current_user.play_favorites.new(play_id: @play.id)
    favorite.save
   end

  def destroy
    @play = Play.find(params[:play_id])
    favorite = current_user.play_favorites.find_by(play_id: @play.id)
    favorite.destroy
  end
end
