class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def create
    fail
    @list = List.create(title: params[:title], description: params[:description], user_id: params[:user_id])
    redirect_to root_path
  end

  def show
    @list = List.find(params[:id])
    @user = User.find(@list.user_id)
    @listmovies = Listmovie.where(list_id: @list.id)
    @comments = Comment.where(list_id: @list.id)
  end

  def update
    @list = List.find(params[:id])
    List.update(@list.id, title: params[:title], description: params[:description])
    redirect_to list_path(@list.id)
  end

  def destroy
    list = List.find_by_id(params[:id])
    list.destroy
    redirect_to user_path
  end

  private

  def list_params
    params.require(:list).permit(:title, :description, :user_id)
  end

end
