class PlaysController < ApplicationController
  def index
    @plays = Play.all
  end

  def show
    @play = Play.find(params[:id])
  end

  def new
   @play = Play.new
  end
  
  def create
  @play = Play.new(play_params)
  @play.user_id = current_user.id
  @play.save
  redirect_to plays_path
  end
  
  def destroy
    @play = Play.find(params[:id])
    @play.destroy
    redirect_to plays_path
  end
  
  private
  def play_params
  params.require(:play).permit(:camp_play, :play_introduction, :play_image)
  end
end
