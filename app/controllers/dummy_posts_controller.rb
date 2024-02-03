class DummyPostsController < ApplicationController
  before_action :set_dummy, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]


  def publish
    respond_to do |format|
    format.js{@dummy_post.update(published_at: Time.now)}
    end
  end

  def index
    @dummy_posts= user_signed_in? ? DummyPost.sorted : DummyPost.published.sorted
    @pagy, @dummy_posts = pagy(@dummy_posts)
    rescue Pagy::OverflowError
      redirect_to root_path(page: 1)
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
    params.require(:dummy_post).permit(:title, :content, :cover_image, :published_at)
  end

  def set_dummy
    @dummy_post= user_signed_in? ? DummyPost.find(params[:id]): DummyPost.published.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

end
