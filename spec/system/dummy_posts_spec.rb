require 'rails_helper'

RSpec.describe "DummyPosts", type: :system do
  it "triggers edit controller" do
    user = create(:user,email:"example@gmail.com", password:"password")
    login_as(user)
visit "/"
    click_on "blog 74"
    click_on "edit"
    click_on "Update Dummy post"
    expect(current_path).to eq("/dummy_posts/79/edit")
  end
end
