class Question < ActiveRecord::Base
  attr_accessible :content, :prerequisite_attributes, :options_attributes
  
  #Question-Option Relationship
  has_many :options, :dependent => :destroy
  accepts_nested_attributes_for :options
  
  #Question-Answer Relationship
  has_many :answers
  

end
