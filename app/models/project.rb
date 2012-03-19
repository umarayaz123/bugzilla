class Project < ActiveRecord::Base

  
  has_many :bugs
  has_many:users , :through => :proj_dev
end
