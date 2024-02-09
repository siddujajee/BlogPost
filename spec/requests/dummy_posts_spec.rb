require 'rails_helper'

RSpec.describe "DummyPostsController", type: :request do
  describe "GET /dummy_posts" do
    it "works! (now write some real specs)" do
      get dummy_posts_path
      expect(response).to have_http_status(200)
    end
  end

  it "post to dummy_posts" do

    parameters= {dummy_post: {title:"this is testing title", content:"this is testing content" } }
    post dummy_posts_path , params: parameters
    expect(response).to have_http_status(302)
  end
end
