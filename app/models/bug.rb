class Bug < ActiveRecord::Base

#   attr_accessible :title, :deadline, :type, :status , :avatar ,:image

  belongs_to :user
  belongs_to :project


  mount_uploader :image, ImageUploader
#  has_attached_file :avatar ,
#    :url  => "vendor/assets/bugs/:id/:style/:basename.:extension",
#    :path => ":rails_root/public/vendor/assets/bugs/:id/:style/:basename.:extension"

#  has_attached_file :photo , :styles => {:small => "150*150"}
 # validates :title ,:presence=> true
 # validates :deadline , :presence=> true
  #  validates :type ,:presence=> true
 # validates :status, :presence=> true


 # validates_attachment_presence :avatar
#  validates_attachment_size :photo, :less_than => 5.megabytes
#  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  
end
