class Question < ActiveRecord::Base
  attr_accessible :content
  has_many :options
  has_many :answers
end
