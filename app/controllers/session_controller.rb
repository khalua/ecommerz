class SessionController < ApplicationController
  def new
  end

  def create
    user = User.where(:email => params[:email]).first
    if user.present? && user.authenticate(params[:password])
      Notifications.login_message(user).deliver
      session[:user_id] = user.id
    else
      flash[:notice] = "nope"
      redirect_to(login_path)
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to(root_path)
  end

end