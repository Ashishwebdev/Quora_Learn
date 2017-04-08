class AddTopicIdToUser < ActiveRecord::Migration
  def change
  	add_column :users, :topic_id, :integer
  end
end
