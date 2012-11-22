class Option < ActiveRecord::Base
  attr_accessible :content, :prerequisite_attributes, :options_attributes
  
  #Option-Question Relationship
  belongs_to :question
end
