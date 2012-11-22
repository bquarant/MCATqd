class Option < ActiveRecord::Base
  attr_accessible :content, :correct, :prerequisite_attributes, :options_attributes
  
  #Option-Question Relationship
  belongs_to :question
end
