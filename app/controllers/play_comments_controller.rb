class PlayCommentsController < ApplicationController
 def create
  play = Play.find(params[:play_id])
  comment = current_user.play_comments.new(play_comment_params)
  comment.play_id = play.id
  comment.save
  redirect_to play_path(play)
 end
 
 def destroy
  PlayComment.find(params[:id]).destroy
  redirect_to play_path(params[:play_id])
 end
 
 private
 
 def play_comment_params 
 params.require(:play_comment).permit(:comment)
 end
 
end

