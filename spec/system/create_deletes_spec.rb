require 'rails_helper'

RSpec.describe "CreateDeletes", type: :system do
  it "creates post" do
user=create(:user, email:"example@gmail.com", password:"password")
login_as(user)
visit "/"
click_on "New Blog Post"
visit "/dummy_posts/new"
fill_in "Title", with:"this is capybara testing post title"
# expect(page).to have_field("Content", wait: 10)
find("#dummy_post_content").set("this is capybara testing post's content")
click_on "Create Dummy post"

expect(page).to have_current_path(dummy_post_path(DummyPost.last))

  end

it "deletes post" do
  user=create(:user, email:"example@gmail.com", password:"password")
login_as(user)
visit "/"
click_on "New Blog Post"
visit "/dummy_posts/new"
fill_in "Title", with:"this is capybara testing post title"
# expect(page).to have_field("Content", wait: 10)
find("#dummy_post_content").set("this is capybara testing post's content")
click_on "Create Dummy post"
click_on "edit"
visit edit_dummy_post_path(DummyPost.last)
click_on "delete"
accept_alert
expect(page).to have_current_path(root_path)


  end
end
