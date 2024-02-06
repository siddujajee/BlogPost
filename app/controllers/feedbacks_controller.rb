class FeedbacksController < ApplicationController
  def create

    @feedback=current_user.feedbacks.new(feedback_params)
    if !@feedback.save
      flash[:notice]=@feedback.errors.full_messages.to_sentence
    end
    redirect_to dummy_post_path(params[:dummy_post_id])
  end
  private
  def feedback_params
    params.require(:feedback).permit(:content).merge(dummy_post_id: params[:dummy_post_id])
  end
end
