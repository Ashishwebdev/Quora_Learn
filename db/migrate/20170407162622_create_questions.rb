class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.integer :user_id , index: true
        t.text :content
      t.timestamps null: false
    end
  end
end
