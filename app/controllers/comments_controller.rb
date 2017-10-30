class CommentsController < ApplicationController

    def create
      Comment.create(user_id: current_user.id, list_id: params[:list_id], content: params[:content])
      redirect_to list_path(params[:list_id])
    end

    def destroy
      list_id = Comment.find(params[:id]).list_id
      Comment.find(params[:id]).destroy
      redirect_to list_path(list_id)
    end

end
