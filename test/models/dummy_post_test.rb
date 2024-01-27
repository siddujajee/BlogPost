require "test_helper"

class DummyPostTest < ActiveSupport::TestCase
  test "draft? retuns true for published blog post " do
    binding.irb
     DummyPost.new(published_at: nil).draft?
  end
end
