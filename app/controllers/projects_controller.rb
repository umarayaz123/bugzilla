class ProjectsController < ApplicationController


  def new
    @project=Project.new
  end

  def index
    @projects=Project.all
  end

  def show
    # @ = Project.find(params[:id])
  end

  def create
    @project=Project.new(params[:project])

    if @project.save

      redirect_to new_home_path

    else
      render 'new'
    end

  end

  def edit

  end

  def update

  end

  def destroy

  end
  def proj
    @project = Project.new
  end
end
