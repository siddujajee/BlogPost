class FeedbacksController < ApplicationController
  def create
    @dummy_post=DummyPost.find(params[:dummy_post_id])
    @feedback=Feedback.new(feedback_params)
    @feedback.save
    redirect_to dummy_post_path(@dummy_post)
  end
  private
  def feedback_params
    params.require(:feedback).permit(:content).merge(dummy_post_id: params[:dummy_post_id])
  end
end
