class CreateFeedbacks < ActiveRecord::Migration[7.1]
  def change
    create_table :feedbacks do |t|
      t.text :content, null: false
      t.references :dummy_post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
