class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def create
    @list = List.create(title: params[:title], description: params[:description], user_id: params[:user_id])
    redirect_to root_path
  end

  def show
    @list = List.find(params[:id])
    @user = User.find(@list.user_id)
  end

  def updated
  end

  def destroy
  end

  private

  def list_params
    params.require(:list).permit(:title, :description, :user_id)
  end

end
