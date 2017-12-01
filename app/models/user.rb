class User < ApplicationRecord

  before_save {self.email = email.downcase}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


 


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}


  has_one :answer
  has_many :votes
  has_many :user_topics, dependent: :destroy
  has_many :topics, through: :user_topics, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :user_comments, dependent: :destroy
  has_many :comments, through: :user_comments ,dependent: :destroy




end
