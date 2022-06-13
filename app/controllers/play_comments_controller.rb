class PlayCommentsController < ApplicationController
 def create
  @play = Play.find(params[:play_id])
  @comment = current_user.play_comments.new(play_comment_params)
  @comment.play_id = @play.id
  @comment.save
 end
 
 def destroy
  PlayComment.find_by(id: params[:id], play_id: params[:play_id]).destroy
  @play = Play.find(params[:play_id])
 end
 
 private
 
 def play_comment_params 
 params.require(:play_comment).permit(:comment)
 end
 
end

