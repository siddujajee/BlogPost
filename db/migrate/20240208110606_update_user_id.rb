class UpdateUserId < ActiveRecord::Migration[7.1]

    def up
      ActiveRecord::Base.transaction do
      Feedback.where(user_id: nil).update_all(user_id: 1)
     change_column :feedbacks, :user_id, :integer, null: false, default: 1
      end
     end
      def down
     change_column :feedbacks, :user_id, :integer, null: true, default: nil
     end

end
