class DummyPosts::CoverImagesController < ApplicationController
include ActionView::RecordIdentifier
  before_action :authenticate_user!
  def destroy
    @dummy_post=DummyPost.find(params[:dummy_post_id])
    @dummy_post.cover_image.purge_later
    respond_to do |formate|
      formate.html{redirect_to edit_dummy_post_path(@dummy_post)}
      formate.turbo_stream{render turbo_stream: turbo_stream.remove(dom_id(@dummy_post, :cover_image))}
    end
  end
end
