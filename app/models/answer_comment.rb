class AnswerComment < ActiveRecord::Base
	belongs_to :comment
    belongs_to :answer
end
