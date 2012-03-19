class Photo < ActiveRecord::Base

  belongs_to :photoable, :polymorphic => true
  mount_uploader :image, AvatarUploader

  def name
    read_attribute(:image)
  end

  def size
    image.size
  end

  def url
    image.url
  end

  def thumb_url
    image.thumb.url
  end

end
