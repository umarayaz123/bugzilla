class PicturesController < ApplicationController
  def new
#      render :layout => false
  end
  def index
    @pictures = Picture.all
    render :json => @pictures.collect { |p| p.to_jq_upload }.to_json
  end

  def create
    @picture = Picture.new(params[:picture])
    @picture.files.each{|f| @picture.photos.build({:image => f})}
    if @picture.save
      respond_to do |format|
        format.html {
#          render :json => [@picture.to_jq_upload].to_json,
          render :json => @picture.photos_to_jq_upload.to_json,
          :content_type => 'text/html',
          :layout => false
        }
        format.json {
          render :json => @picture.photos_to_jq_upload.to_json
        }
      end
    else
      render :json => [{:error => "custom_failure"}], :status => 304
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    render :json => true
  end

end
