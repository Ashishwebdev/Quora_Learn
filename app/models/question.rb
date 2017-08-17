class Question < ActiveRecord::Base
	 belongs_to :users,
	 has_many :answers,
	 has_many :question_topics
	 has_many :topics,:through => :question_topics
end
