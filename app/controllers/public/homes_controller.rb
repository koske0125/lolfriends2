class Public::HomesController < ApplicationController

  def top
    if user_signed_in?
      @user = User.find(current_user.id)
    end
  end

end
