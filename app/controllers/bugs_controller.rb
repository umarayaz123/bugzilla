class BugsController < ApplicationController

  def new
    @bug = Bug.new
    render :layout => false
    #return render :xml => @bug
  end

  def index
    #return render :text => "abcdef"
    @bugs = Bug.all
  end
  def upload
    render :json => [Picture.last.photos_to_jq_upload].to_json
#    params[:files].each{|f| @picture.photos.build({:image => f})}
#    if @picture.save
#      respond_to do |format|
#        format.html {
##          render :json => [@picture.to_jq_upload].to_json,
#          render :json => @picture.photos_to_jq_upload.to_json,
#          :content_type => 'text/html',
#          :layout => false
#        }
#        format.json {
#          render :json => @picture.photos_to_jq_upload.to_json
#        }
#      end
#    else
#      render :json => [{:error => "custom_failure"}], :status => 304
#    end
  end
#  def upload
#    params[:files]
#    {
#      "name" => read_attribute(:avatar_name),
#      "size" => avatar.size,
#      "url" => avatar.url,
#      "thumbnail_url" => avatar.thumb('80x80#').url,
#      "delete_url" => picture_path(:id => id),
#      "delete_type" => "DELETE"
#    }
#  # @original_filename="images (2).jpg", @content_type="image/jpeg", @headers="Content-Disposition: form-data; name=\"files[]\"; filename=\"images (2).jpg\"\r\nContent-Type: image/jpeg\r\n", @tempfile=#<File:/tmp/RackMultipart20120317-7932-1r88j3n>>]
#    Rails.logger.debug "===== Stage one"
#    @bug = Bug.new
#
#    #return render :text => params[:files].count
#    Rails.logger.debug "===== stage 2 "
#  end
  def show
    # @bug = Bug.find(params[:id])
  end

  def create

    @bug = Bug.new(params[:bug])
#    return render :json => [@bug, params]

    if @bug.save
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
  def example
    Rails.logger.debug "===== example controller 1"
     @bug = Bug.new
  end
  def simple
     render :layout => false
     @bug = Bug.new
  end
end