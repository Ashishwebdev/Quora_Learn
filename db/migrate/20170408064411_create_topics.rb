class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
    	t.integer :user_id
        t.integer :question_id
        t.text  :content
      t.timestamps null: false
    end
  end
end
