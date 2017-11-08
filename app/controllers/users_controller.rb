class UsersController < ApplicationController

  def show
    @user = User.find(current_user.id)
    @lists = List.where(user_id: current_user.id)
  end

  def create
  end

end
