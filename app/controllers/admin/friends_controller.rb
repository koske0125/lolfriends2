class Admin::FriendsController < ApplicationController
   before_action :authenticate_admin!

   def index
     @friends = Friend.all
   end

   def edit
     @friend = Friend.find(params[:id])
   end

   def update
     @friend = Friend.find(params[:id])
      if @friend.update(friend_params)
        flash[:notice] = "更新しました"
        redirect_to admin_path
      else
        render "edit"
      end
   end


  private

  def friend_params
    params.require(:friend).permit(:user_id, :favorite_champion, :favorite_champion2, :fovorite_champion3, :introduction, :rank, :is_rank, :is_normal, :is_beginner, :is_coaching, :is_coached, :is_clash, :good_at_top, :good_at_jg, :good_at_mid, :good_at_adc, :good_at_sup, :bad_at_top, :bad_at_jg, :bad_at_mid, :bad_at_adc, :bad_at_sup, :active_time, :twitter, :vc_status, :vc_discord, :vc_skype, :vc_leaguevoice)
  end

end
