class Option < ActiveRecord::Base
  attr_accessible :content, :correct, :prerequisite_attributes, :options_attributes, :option_id
  
  #Option-Question Relationship
  belongs_to :question
end
