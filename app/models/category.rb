class Category < ActiveRecord::Base
  attr_accessible :category
  
  #Category-Question Relationship
  belongs_to :question
  
end
