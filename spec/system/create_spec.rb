require 'rails_helper'

RSpec.describe "Create", type: :system do
it "creates post" do
  user=create(:user, email:"example@gmail.com", password:"password")
login_as(user)
visit "/"
click_on "New Blog Post"
visit "/dummy_posts/new"

fill_in "Title", with:"this is capybara testing post title"
find("#dummy_post_content").set("this is capybara testing post's content")
click_on "Create Dummy post"

expect(page).to have_content("this is capybara testing post title")
# click_on "edit"
# sleep 2
# visit edit_dummy_post_path(DummyPost.last)
# click_on "delete"
# sleep 2
# accept_alert
# expect(page).to have_current_path(root_path)
# sleep 5

  end
end
