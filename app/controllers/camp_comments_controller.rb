class CampCommentsController < ApplicationController
   def create
    camp = Camp.find(params[:camp_id])
    comment = current_user.camp_comments.new(camp_comment_params)
    comment.camp_id = camp.id
    comment.save
    redirect_to camp_path(camp)
   end
   
   def destroy
    CampComment.find(params[:id]).destroy
    redirect_to camp_path(params[:camp_id])
   end

  private

  def camp_comment_params
    params.require(:camp_comment).permit(:comment)
  end

end

