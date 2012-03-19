class Student < ActiveRecord::Base
  
  has_many :photos, :as => :photoable
  accepts_nested_attributes_for :photos

  attr_accessor :files

  validates :age, :numericality => { :less_than => 32, :greater_than => 16 }


  before_validation :set_default_file_count
  def set_default_file_count
    self.files ||= []
  end

  before_save :build_photos
  def build_photos
    logger.debug "====== count 1"
    logger.debug "====== count 2"
    self.files.each do |file|
      self.photos.build({:image => file})
      logger.debug "====== count 3"
    end
  end

  validate :validate_files
  def validate_files
    errors.add(:files, "Must be less than 3 and greater than 1") if(files.count > 3 || files.count < 1)
  end

end
