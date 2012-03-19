class User < ActiveRecord::Base

  #authenticates_with_sorcery!
  # attr_accessible :email, :password, :password_confirmation, :authentications_attributes
  authenticates_with_sorcery! do |config|
    config.authentications_class = Authentication
  end

  has_many :authentications, :dependent => :destroy
  accepts_nested_attributes_for :authentications
  #  attr_accessible :name , :email , :user_type

  has_many :bugs
  has_many :projects, :through => :proj_dev
#
#  validates :name,  :presence => true, :length => { :maximum => 40 }
#
#  valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
#  validates :email, :presence=> true, :format => { :with=> valid_email_regex } ,
#    :uniqueness=> { :case_sensitive=>false }
#
#  validates :user_type,  :presence=> true
  
end