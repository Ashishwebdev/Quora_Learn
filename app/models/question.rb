class Question < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  has_many :answers
end
