class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
    
  #User-Answer relationship 
  has_many :answers
  
  #User-Profile relationship
  has_one :profile
  
  #Accept nested attributes for Profile generation
  #accepts_nested_attributes_for :profile
  
  # Set is_admin to accessible; not sure if this is done correctly.
  #attr_accessible :is_admin, :profile_attributes
  
  after_create :build_user_profile 

  def build_user_profile
      self.build_profile
  end
  
end