class CallbacksController < ApplicationController

  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in @user
    redirect_to edit_user_path(@user)
  end
end
