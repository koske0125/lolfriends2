class Public::UsersController < ApplicationController
  def edit
    @user = User.find(current_user.id)
  end

  def show
    @user = User.find(current_user.id)
  end



  private

  def user_params
    params.require(:user).permit(:email, :password, :summoner_name, :is_published, :authenticate, :is_deleted)
  end

end
