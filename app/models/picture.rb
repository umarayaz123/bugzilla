class Picture < ActiveRecord::Base

  include Rails.application.routes.url_helpers
  mount_uploader :avatar, AvatarUploader

  has_many :photos, :as => :photoable
  accepts_nested_attributes_for :photos

  attr_accessor :files

  #one convenient method to pass jq_upload the necessary information
  def to_jq_upload
    {
      "name" => read_attribute(:avatar),
      "size" => avatar.size,
      "url" => avatar.url,
      "thumbnail_url" => avatar.thumb.url,
      "delete_url" => picture_path(:id => id),
      "delete_type" => "DELETE"
    }
  end
  def photos_to_jq_upload
    photos.map do |p|
      {
        "name" => p.name,
        "size" => p.size,
        "url" => p.url,
        "thumbnail_url" => p.thumb_url
      }
    end
  end
end
