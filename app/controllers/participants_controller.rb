class ParticipantsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @participant = Participant.create(user_id: current_user.id, event_id: params[:event_id])
    @participants = @event.users
  end

  def destroy
    @event = Event.find(params[:id])
    @participant = Participant.find(params[:id])
    @participants = @event.users
    participant.destroy
  end

end
