class Answer < ActiveRecord::Base
    belongs_to :question
    belongs_to :user
    belongs_to :option
    
    def correct?
      option.correct
    end
end
