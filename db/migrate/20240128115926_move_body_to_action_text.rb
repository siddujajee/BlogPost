class MoveBodyToActionText < ActiveRecord::Migration[7.1]
  def change
    DummyPost.all.find_each do |dummy_post|
      dummy_post.update(content: dummy_post.body)
    end
  end
end
