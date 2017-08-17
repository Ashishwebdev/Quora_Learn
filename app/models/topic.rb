class Topic < ActiveRecord::Base
	has_many :user_topics
	has_many :users, :through => 'user_topics'
	belongs_to :question

end
