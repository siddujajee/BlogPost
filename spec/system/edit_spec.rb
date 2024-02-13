require 'rails_helper'

RSpec.describe "Edit", type: :system do
  it "edit post" do
    user=create(:user, email:"example@gmail.com", password:"password")
login_as(user)
visit "/"
click_on "New Blog Post"
visit "/dummy_posts/new"

fill_in "Title", with:"this is capybara testing post title"
find("#dummy_post_content").set("this is capybara testing post's content")
click_on "Create Dummy post"
click_on "edit"
visit edit_dummy_post_path(DummyPost.last)
fill_in "Title", with:"this is edited capybara testing post title"
click_on "Update Dummy post"
expect(page).to have_content("this is edited capybara testing post title")

  end
end
