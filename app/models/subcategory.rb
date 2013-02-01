class Subcategory < ActiveRecord::Base
  attr_accessible :category_id, :subcategory
  
  #Subcategory-Category Relationship
  belongs_to :category

end
