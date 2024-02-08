class ChangeConstraint < ActiveRecord::Migration[7.1]
  def change
    remove_column :feedbacks, :user_id
    add_column :feedbacks, :user_id, :integer, null: true
  end
end
