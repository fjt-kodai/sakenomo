class HomeController < ApplicationController

  def index
    redirect_to  user_path(current_user.id) if user_signed_in?
    @event = Event.new
    @events = Event.where('date >= ?', Date.today).limit(5)
    @events_all = Event.all
  end

end

