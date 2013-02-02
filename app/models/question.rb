class Question < ActiveRecord::Base
  attr_accessible :created_at, :content, :category_id, :subcategory_id, :prerequisite_attributes, :options_attributes, :answer_attributes, :category_attributes, :subcategory_attributes
  
  #Question-Answer Relationship
  has_many :answers
  
  #Question-Category Relationship
  has_one :category

  #Question-Subcategory Relationship
  has_one :subcategory
  
  #Question-Option Relationship
  has_many :options, :dependent => :destroy
  
  #Accept Nested Attributes:
  accepts_nested_attributes_for :options, :answers, :category, :subcategory
  
  #Define Question#index pagination rule
  self.per_page = 6 
end