class CreateUserQuestions < ActiveRecord::Migration
  def change
    create_table :user_questions do |t|
    	t.integer "user_id"
        t.integer "question_id"

      t.timestamps null: false
    end
    add_index("user_questions",['user_id','question_id'])
  end
end
