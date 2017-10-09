class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
#user Avatar validation

 

  validates_presence_of   :avatar
  validates_integrity_of  :avatar
  validates_processing_of :avatar


  has_one :answer
  has_many :votes
  belongs_to :answer
  has_many :user_topics, dependent: :destroy
  has_many :topics, through: :user_topics, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :user_comments, dependent: :destroy
  has_many :comments, through: :user_comments ,dependent: :destroy




end
