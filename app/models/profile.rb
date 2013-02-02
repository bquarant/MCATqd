class Profile < ActiveRecord::Base
  attr_accessible :blurb, :user_id, :created_at, :first_name, :last_name
  
  #Profile-User Relationship
  belongs_to :user
end
