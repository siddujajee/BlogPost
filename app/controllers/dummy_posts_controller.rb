class DummyPostsController < ApplicationController
  def index
    @dummy_posts=DummyPost.all
  end
  def show
    @dummy_post=DummyPost.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end
  def new
    @dummy_post=DummyPost.new
  end
end
