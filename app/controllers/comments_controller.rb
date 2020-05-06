class CommentsController < ApplicationController
  before_action :set_event

  def create
    @comment = @event.comments.new(comment_params)
    if @comment.save
      redirect_to event_path(@event), notice: 'コメントが投稿されました'
    else
      # @messages = @group.messages.includes(:user)
      flash.now[:alert] = 'コメントを入力してください。'
      redirect_to event_path(@event)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :image).merge(user_id: current_user.id)
  end

  def set_event
    @event = Event.find(params[:event_id])
  end
end
