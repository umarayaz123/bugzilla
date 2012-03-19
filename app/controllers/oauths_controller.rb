class OauthsController < ApplicationController
  #  skip_before_filter :require_login

  # sends the user on a trip to the provider,
  # and after authorizing there back to the callback url.
 

def oauth
    login_at(params[:provider])
    Rails.logger.debug "===== Stage one"
  end

  def callback
    provider = params[:provider]
     
    if @user = login_from(provider)
      redirect_to new_home_path, :notice => "Logged in from #{provider.titleize}!"
      Rails.logger.debug "===== Stage 2 after the"
    else
      begin
         Rails.logger.debug "===== Stage 3 part else "
        @user = create_from(provider)
         Rails.logger.debug "===== Stage 4 part after else"
        # NOTE: this is the place to add '@user.activate!' if you are using user_activation submodule

        reset_session # protect from session fixation attack
        auto_login(@user)
        redirect_to root_path, :notice => "Logged in from #{provider.titleize}!"
      rescue
         Rails.logger.debug "=====  Stage 6 recue"
        redirect_to new_home_path, :alert => "Failed to login from #{provider.titleize}!"
         Rails.logger.debug "===== Stage 7 after recue"
      end
    end
  end
end