class Answer < ActiveRecord::Base
  attr_accessible :answer, :prerequisite_attributes, :options_attributes, :answers_attributes, :question_id, :user_id
  belongs_to :question
  belongs_to :user
  
  # TODO: OK, so the validation here seems to work, in order to prevent a Rails error
  # which was taking down the app, but I don't know how to control the CSS for the 
  # error text and button which gets rendered. I need to seek some help out about
  # this question!
  
  # TODO: Of note, it does render to answers#new right now.
  validates :answer, :presence => true
end
