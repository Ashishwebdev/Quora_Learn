class TopicController < ApplicationController

def index
	
end

def topic_interest
	@topic = Topic.all
end

end
