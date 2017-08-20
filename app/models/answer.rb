class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_many :answer_comments , dependent: :destroy
  has_many :comments, through: :answer_comments, dependent: :destroy
  has_one :user
end
