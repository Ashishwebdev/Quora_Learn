class CreateAnswerComments < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_comments do |t|
      t.references :answer, foreign_key: true
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
