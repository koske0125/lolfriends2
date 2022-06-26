class Public::FriendsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :is_rank, :is_normal, :is_beginner, :is_coaching, :is_coached, :is_clash]
  before_action :set_q, only: [:index, :search]


  def index
    if user_signed_in?
      @user = User.find(current_user.id)
    end
    @friends = Friend.all
  end

  def show

  end

  def is_rank
    @friends = Friend.where(is_rank: true)
    if user_signed_in?
      @user = User.find(current_user.id)
    end
  end

  def is_normal
    @friends = Friend.where(is_normal: true)
    if user_signed_in?
      @user = User.find(current_user.id)
    end
  end

  def is_beginner
    @friends = Friend.where(is_beginner: true)
    if user_signed_in?
      @user = User.find(current_user.id)
    end
  end

  def is_coaching
    @friends = Friend.where(is_coaching: true)
    if user_signed_in?
      @user = User.find(current_user.id)
    end
  end

  def is_coached
    @friends = Friend.where(is_coached: true)
    if user_signed_in?
      @user = User.find(current_user.id)
    end
  end

  def is_clash
    @friends = Friend.where(is_clash: true)
    if user_signed_in?
      @user = User.find(current_user.id)
    end
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
    @friend = Friend.find(params[:id])
    if @friend.user_id == current_user.id
      @friend.destroy
      redirect_to public_friends_path, notice: "投稿を削除しました"
    else
      redirect_to public_friends_path, notice: "不正なアクセスです"
    end
  end

  private

  def friend_params
    params.require(:friend).permit(:user_id, :favorite_champion, :favorite_champion2, :fovorite_champion3, :introduction, :rank, :is_rank, :is_normal, :is_beginner, :is_coaching, :is_coached, :is_clash, :good_at_top, :good_at_jg, :good_at_mid, :good_at_adc, :good_at_sup, :bad_at_top, :bad_at_jg, :bad_at_mid, :bad_at_adc, :bad_at_sup, :active_time, :twitter, :vc_status, :vc_discord, :vc_skype, :vc_leaguevoice)
  end

  def set_q
    @q = Friend.ransack(params[:q])
  end

end
