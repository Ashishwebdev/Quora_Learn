class AddAnswerIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :answer, foreign_key: true
  end
end
