require "test_helper"

class DummyPostTest < ActiveSupport::TestCase
  test "draft? returns true for draft blog post " do
    binding.irb
     assert DummyPost.new(published_at: nil).draft?
  end
end
