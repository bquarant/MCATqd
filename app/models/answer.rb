class Answer < ActiveRecord::Base
  attr_accessible :answer, :prerequisite_attributes, :options_attributes, :answers_attributes, :question_id, :user_id
  belongs_to :question
  belongs_to :user
end
