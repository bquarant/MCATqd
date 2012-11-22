class Question < ActiveRecord::Base
  attr_accessible :content, :prerequisite_attributes, :options_attributes, :answer_attributes
  
  #Question-Answer Relationship
  has_many :answers
  
  #Question-Option Relationship
  has_many :options, :dependent => :destroy
  accepts_nested_attributes_for :options, :answers

end
