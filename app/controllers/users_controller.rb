class UsersController < ApplicationController
  
  def show
    @organized_events = Event.where('date >= ? and organizer_id = ?', Date.today, current_user.id).limit(5)
    @participating_events = current_user.events.where('date >= ?', Date.today).limit(5)
    @events = Event.where('date >= ?', Date.today).limit(5)
    @events_all = Event.all
    gon.user_id = current_user.id
    @comments = current_user.comments.limit(30)
  end

end
