class AddTopicIdToQuestions < ActiveRecord::Migration
  def change
  	add_column :questions, :topic_id, :integer
  end
end
