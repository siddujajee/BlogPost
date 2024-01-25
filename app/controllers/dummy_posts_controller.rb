class DummyPostsController < ApplicationController
  before_action :set_dummy, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @dummy_posts=DummyPost.all
  end


  def show
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end


  def new
    @dummy_post=DummyPost.new
  end


  def create
    @dummy_post=DummyPost.new(post_params)
    if @dummy_post.save
      redirect_to @dummy_post
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @dummy_post.update(post_params)
      redirect_to @dummy_post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @dummy_post.destroy
    redirect_to root_path
  end

  private
  def post_params
    params.require(:dummy_post).permit(:title, :body)
  end

  def set_dummy
    @dummy_post=DummyPost.find(params[:id])
  end

end
