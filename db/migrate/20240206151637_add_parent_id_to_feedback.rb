class AddParentIdToFeedback < ActiveRecord::Migration[7.1]
  def change
    add_column :feedbacks, :parent_id, :integer, null: true
  end
end
