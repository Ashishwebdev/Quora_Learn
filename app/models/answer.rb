class Answer < ActiveRecord::Base
	belongs_to :user
	has_many :question_answers
	has_many :questions , :through => :question_answers
	has_many :answer_comments
	has_many :comments, :through => :answer_comments
end
