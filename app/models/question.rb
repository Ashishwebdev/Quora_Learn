class Question < ActiveRecord::Base
	 has_many :user_questions, class_name: 'UserQuestion'
	 has_many :users, :through => :user_questions
	 has_many :question_answers
	 has_many :answers, :through => :question_answers
	 has_many :question_topics
	 has_many :topics,:through => :question_topics
end
