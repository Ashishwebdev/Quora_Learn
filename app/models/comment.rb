class Comment < ApplicationRecord
  has_many :user_comments, dependent: :destroy
  has_many :users, through: :user_comments, dependent: :destroy
  has_many :answer_comments
  has_many :answers, through: :answer_comments
end
