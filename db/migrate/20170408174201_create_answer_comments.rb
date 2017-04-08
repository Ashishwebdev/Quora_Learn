class CreateAnswerComments < ActiveRecord::Migration
  def change
    create_table :answer_comments do |t|
    	t.integer :answer_id
    	t.integer :comment_id

      t.timestamps null: false
    end
  end
end
