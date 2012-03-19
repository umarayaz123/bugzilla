class SessionsController < ApplicationController

  def new
  end

  def create
#    return render :text => "abcdef"
    user = login(params[:email], params[:password], params[:remember_me])
    if user
      redirect_to proj_projects_path, :notice => "Logged in!"
    else
      flash.now.alert = "Email or password was invalid"
      render :new
    end
  end

  def destroy
    logout
    redirect_to proj_projects_path, :notice => "Logged out!"
  end

end