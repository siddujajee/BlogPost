class AddUserToFeedback < ActiveRecord::Migration[7.1]
  def change
    add_reference :feedbacks, :user, null: true, foreign_key: true
  end
end
