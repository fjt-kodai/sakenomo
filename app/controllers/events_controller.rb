class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:update, :destroy]
  before_action :set_event, only: [:show, :update, :destroy]

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to event_path(@event.id)
    else
      redirect_to user_path(current_user.id)
    end
  end

  def show
    @venue = @event.venue if @event.venue_id
    @participant = Participant.find_by(user_id: current_user&.id, event_id: params[:id])
    @comments = @event.comments
  end

  def update
    @event_before = @event.dup
    @event.update(event_params)
  end

  def destroy
  end
  
  private

  def event_params
    params.require(:event).permit(:title, :date, :start_time, :end_time, :fee, :user_id).merge(organizer_id: current_user.id)
  end

  def set_event
    @event = Event.find(params[:id])
  end

end
