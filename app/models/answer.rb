class Answer < ActiveRecord::Base
	belongs_to :user

	belongs_to :questions
	has_many :answer_comments
	has_many :comments, :through => :answer_comments
end
