class AddPublishedAtToDummyPost < ActiveRecord::Migration[7.1]
  def change
    add_column :dummy_posts, :published_at, :datetime
  end
end
