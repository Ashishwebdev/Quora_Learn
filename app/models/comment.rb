class Comment < ActiveRecord::Base
	has_many :answer_comments
	has_many :answers, :through => :answer_comments

	has_many :user_comments
	has_many :users , :through => :user_comments
end
