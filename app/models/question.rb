class Question < ActiveRecord::Base
	 has_many :user_questions, class_name: 'UserQuestion'
	 has_many :users, :through => :user_questions
end
