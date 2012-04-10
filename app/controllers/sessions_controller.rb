class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:login], params[:password])
    if user
      session[:user_id] = user.id
      flash[:notice] = "Logged in successfully!"
      redirect_to holidayrequests_path
    else
      flash[:notice] = "Invalid login or password!"
      render :action => 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have been logged out!"
    redirect_to root_url
  end
end
