class ApplicationController < ActionController::Base
  protect_from_forgery

  def not_authenticated
    redirect_to proj_projects_path, :alert => "First login to access this page."
    #login_url
  end


end
