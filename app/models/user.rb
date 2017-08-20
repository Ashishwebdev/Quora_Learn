class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :answer
  belongs_to :answer
  has_many :user_topics, dependent: :destroy
  has_many :topics, through: :user_topics, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :user_comments, dependent: :destroy
  has_many :comments, through: :user_comments ,dependent: :destroy
end
