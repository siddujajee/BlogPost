class MoveBodyToContent < ActiveRecord::Migration[7.1]
  def change
    DummyPost.all.each do |dummy_post|
      dummy_post.update(content: dummy_post.body)
    end
  end
end
