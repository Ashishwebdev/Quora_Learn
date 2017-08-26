class Topic < ApplicationRecord
  has_many :user_topics
  has_many :users, through: :user_topics
  has_many :questions, dependent: :destroy
end