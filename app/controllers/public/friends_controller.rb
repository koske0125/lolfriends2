class Public::FriendsController < ApplicationController

  def index

  end

  def show

  end

  def new
    @user = User.find(current_user.id)
    @friend = Friend.new

  end

  def edit

  end

  def update

  end

  def create

  end

  def destroy

  end

  private

  def friend_params
    params.require(:friend).permit(:user_id, :favorite_champion, :favorite_champion2, :favorite_champion3, :introduction, :rank, :is_rank, :is_normal, :is_beginner, :is_coaching, :is_coached, :is_clash, :good_at_top, :good_at_jg, :good_at_mid, :good_at_adc, :good_at_sup, :bad_at_top, :bad_at_jg, :bad_at_mid, :bad_at_adc, :bad_at_sup, :active_time, :twitter, :vc_status, :vc_discord, :vc_skype, :vc_leaguevoice)
  end

end
