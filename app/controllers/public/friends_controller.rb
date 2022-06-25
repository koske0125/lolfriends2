class Public::FriendsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find(current_user.id)
    @friends = Friend.all
  end

  def show

  end

  def new
    @user = User.find(current_user.id)

    if Friend.find_by(user_id: current_user.id)
      redirect_to edit_public_friend_path(@user), notice: "すでに投稿済みです"
    else
      @friend = Friend.new
    end

  end

  def edit
    @user = User.find(current_user.id)
    @friend = Friend.find_by(user_id: current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    @friend = Friend.find_by(user_id: current_user.id)

    if @friend.update(friend_params)
      redirect_to public_friends_path, notice: "投稿しました"
    else
      render "edit"
    end
  end

  def create
    @user = User.find(current_user.id)
    @friend = Friend.new(friend_params)
    @friend.user_id = current_user.id

    if @friend.save
      redirect_to public_friends_path, notice: "投稿しました"
    else
      render "new"
    end
  end

  def destroy

  end

  private

  def friend_params
    params.require(:friend).permit(:user_id, :favorite_champion, :favorite_champion2, :fovorite_champion3, :introduction, :rank, :is_rank, :is_normal, :is_beginner, :is_coaching, :is_coached, :is_clash, :good_at_top, :good_at_jg, :good_at_mid, :good_at_adc, :good_at_sup, :bad_at_top, :bad_at_jg, :bad_at_mid, :bad_at_adc, :bad_at_sup, :active_time, :twitter, :vc_status, :vc_discord, :vc_skype, :vc_leaguevoice)
  end

end
