class Public::UsersController < ApplicationController
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

  private

  def user_params
    params.require(:user).permit(:email, :password, :summoner_name, :is_published, :authenticate, :is_deleted, :profile_image)
  end

end
