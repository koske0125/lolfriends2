class Public::UsersController < ApplicationController
  before_action :authenticate_user!

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
    flash[:notice] = "プロフィールを更新しました"
    bypass_sign_in(@user)
    redirect_to public_user_path(@user)

    else
      render "edit"
    end
  end

  def withdraw
    @user = User.find(current_user.id)
    @user.update(is_deleted: true)
    reset_session
    redirect_to public_path, notice: "退会処理を実行いたしました"
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :summoner_name, :is_published, :authenticate, :is_deleted, :profile_image)
  end

end
