class AnswerComment < ApplicationRecord
  belongs_to :answer
  belongs_to :comment
end
