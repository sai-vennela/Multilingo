class SessionsController < ApplicationController

 skip_before_action :authorize
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      sessions[:user_id] = user.id
      redirect_to_admin_url
    else
      redirect_to_login_url, alert=:"Invalid username or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to_login_url, alert=:"Successfully logged out"
  end
end
