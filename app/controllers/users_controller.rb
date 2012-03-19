class UsersController < ApplicationController


  def new
    # render :text => "abcdef"
    @user=User.new
  end

  def index
    @users=User.all
  end

  def show
    #@user = User.find(params[:id])
  end

  def create

    @user=User.new(params[:user])
    #    return render :json => [@user, params]

    if @user.save
      redirect_to proj_projects_path :notice=> "Signed Up!"
    else
      render 'new'
    end

  end

  def edit
      @user = User.find(params[:id])

  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to user_path
    else
      render "edit"
    end

  end

  def destroy

  end
  
end
