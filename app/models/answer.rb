class Answer < ApplicationRecord

  acts_as_votable

  belongs_to :user
  belongs_to :question
  has_many :votes, dependent: :destroy
  has_many :answer_comments , dependent: :destroy
  has_many :comments, through: :answer_comments, dependent: :destroy

end
