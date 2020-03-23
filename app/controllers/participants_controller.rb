class ParticipantsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @participant = Participant.create(user_id: current_user.id, event_id: params[:event_id])
    @event = Event.find(params[:event_id])
  end

  def destroy
    @participant = Participant.find(params[:id])
    @event = @participant.event
    @participant.destroy
  end

end
