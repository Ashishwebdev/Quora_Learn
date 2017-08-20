class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.references :user, foreign_key: true
      t.references :topic, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
